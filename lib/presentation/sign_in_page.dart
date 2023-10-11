import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:intl/intl.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:locall_app/presentation/widgets/custom_text_form_field_widget.dart';
import '../application/auth_mode/auth_mode_cubit.dart';

enum ResetPasswordResult { fine, error }

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> with TickerProviderStateMixin {
  final _signInGlobalKey = GlobalKey<FormState>();
  final _signUpGlobalKey = GlobalKey<FormState>();
  final _forgotPwGlobalKey = GlobalKey<FormState>();

  AnimationController? _controllerHeight;
  AnimationController? _controllerOpacity;
  Animation<Size>? heightAnimation;
  Animation<double>? _opacityAnimation;

  static const Icon _googleIcon =
      Icon(FontAwesomeIcons.google, color: Colors.white);
  static const Icon _facebookIcon =
      Icon(FontAwesomeIcons.facebookF, color: Colors.white);

  static const Icon _appleIcon =
      Icon(FontAwesomeIcons.apple, color: Colors.white);

  final Icon _usernameIcon = Platform.isAndroid
      ? const Icon(Icons.person)
      : const Icon(CupertinoIcons.person_fill);

  final Icon _emailIcon = Platform.isAndroid
      ? const Icon(Icons.email)
      : const Icon(CupertinoIcons.mail_solid);

  final Icon _passwordIcon = Platform.isAndroid
      ? const Icon(Icons.lock)
      : const Icon(CupertinoIcons.lock_fill);

  final Icon _birthDateIcon = Platform.isAndroid
      ? const Icon(Icons.calendar_today)
      : const Icon(CupertinoIcons.calendar);

  bool _obscurePw = true;
  bool _obscureRepeatPw = true;

  final TextEditingController _usernameController = TextEditingController();
  final _usernameFocusNode = FocusNode();

  final TextEditingController _emailSignInController = TextEditingController();
  final _emailSignInFocusNode = FocusNode();

  final TextEditingController _passwordSignInController =
      TextEditingController();
  final _passwordSignInFocusNode = FocusNode();

  final TextEditingController _passwordSignUpController =
      TextEditingController();
  final _passwordSignUpFocusNode = FocusNode();

  final TextEditingController _repeatPasswordController =
      TextEditingController();
  final _repeatPasswordFocusNode = FocusNode();

  final TextEditingController _emailSignUpController = TextEditingController();
  final _emailSignUpFocusNode = FocusNode();

  final TextEditingController _emailForgotPasswordController =
      TextEditingController();
  final _emailForgotPasswordFocusNode = FocusNode();

  final TextEditingController _birthDateController = TextEditingController();
  final _birthDateFocusNode = FocusNode();
  DateTime? birthDate;

  final TextInputType _emailInputType = TextInputType.emailAddress;
  final TextInputType _passwordInputType = TextInputType.text;

  @override
  void initState() {
    super.initState();
    _controllerHeight = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 333,
      ),
    );
    _controllerOpacity = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 666,
      ),
    );
  }

  bool animationIsDone = false;

  @override
  void dispose() {
    _controllerHeight!.dispose();
    _controllerOpacity!.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return initWidget(context);
  }

  Widget initWidget(context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    final theme = Theme.of(context);

    heightAnimation = Tween<Size>(
      begin: const Size(
        double.infinity,
        0,
      ),
      end: Size(
        double.infinity,
        MediaQuery.of(context).size.height * 0.21,
      ),
    ).animate(
      CurvedAnimation(
        parent: _controllerHeight!,
        curve: Curves.elasticOut,
      ),
    );
    heightAnimation!.addListener(() {
      setState(() {});
    });
    if (heightAnimation!.isCompleted) {
      setState(() {
        animationIsDone = true;
      });
    }

    _opacityAnimation = Tween(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: _controllerOpacity!, curve: Curves.linear));
    if (animationIsDone) {
      setState(() {
        _controllerOpacity!.forward();
      });
    }

    _controllerHeight!.forward();

    final passwordValidator = MultiValidator([
      RequiredValidator(errorText: AppLocalizations.of(context)!.required),
      MinLengthValidator(6,
          errorText: AppLocalizations.of(context)!.minLengthPassword),
      PatternValidator(r'(?=.*?[#?!§/@$%^&*-_])',
          errorText: AppLocalizations.of(context)!.specialCharacter)
    ]);

    final emailValidator = MultiValidator([
      RequiredValidator(
          errorText: AppLocalizations.of(context)!.emailIsRequired),
      EmailValidator(errorText: AppLocalizations.of(context)!.notAValidEmail)
    ]);

    final requiredValidator =
        RequiredValidator(errorText: AppLocalizations.of(context)!.required);

    final String hintUsername = AppLocalizations.of(context)!.username;
    final String hintEmail = AppLocalizations.of(context)!.emailAdress;
    final String hintPassword = AppLocalizations.of(context)!.password;
    final String hintRepeatPassword =
        AppLocalizations.of(context)!.repeatPassword;
    final String hintBirthdate = AppLocalizations.of(context)!.birthdate;
    final String forgotPassword = AppLocalizations.of(context)!.forgotPassword;
    final String backToLoginText = AppLocalizations.of(context)!.backToLogin;
    final String loginText = AppLocalizations.of(context)!.login;
    final String signUpText = AppLocalizations.of(context)!.signUp;
    final String forgotPasswordText =
        AppLocalizations.of(context)!.forgotPassword;
    final String notAUserText = AppLocalizations.of(context)!.notAUserYet;
    final String alreadyAUserYetText =
        AppLocalizations.of(context)!.alreadyAUserYet;
    final String registerText = AppLocalizations.of(context)!.register;
    final String googleLogin = AppLocalizations.of(context)!.googleLogin;
    final String facebookLogin = AppLocalizations.of(context)!.facebookLogin;
    final String appleLogin = AppLocalizations.of(context)!.appleLogin;

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: BlocBuilder<AuthModeCubit, AuthModeState>(
          builder: (context, state) {
            return Column(
              children: [
                Center(
                  child: Container(
                    height: heightAnimation!.value.height,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          blurRadius: 18,
                          offset: const Offset(0, 0), // Shadow position
                        ),
                      ],
                      borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(63),
                      ),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          animationIsDone
                              ? FadeTransition(
                                  opacity: _opacityAnimation!,
                                  child: Text("Oraligin amina koymaya geldik"))
                              : Container(),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Form(
                      key: state.runtimeType == AuthModeLogin
                          ? _signInGlobalKey
                          : state.runtimeType == AuthModeSignUp
                              ? _signUpGlobalKey
                              : _forgotPwGlobalKey,
                      child: Column(
                        children: [
                          if (state.runtimeType == AuthModeSignUp) ...[
                            //Username
                            CustomTextformFieldWidget(
                              controller: _usernameController,
                              prefixIcon: _usernameIcon,
                              hintText: hintUsername,
                              marginTop: height * 0.1,
                              validator: requiredValidator,
                              usernameTextField: true,
                            ),
                            //Select Birth Date
                            Padding(
                              padding: EdgeInsets.only(top: height * 0.015),
                              child: InkWell(
                                focusNode: _birthDateFocusNode,
                                onTap: _showDatePicker,
                                highlightColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                splashFactory: NoSplash.splashFactory,
                                splashColor: Colors.transparent,
                                child: CustomTextformFieldWidget(
                                  controller: _birthDateController,
                                  prefixIcon: _birthDateIcon,
                                  enabled: false,
                                  hintText: hintBirthdate,
                                  marginTop: 0,
                                  validator: requiredValidator,
                                ),
                              ),
                            ),
                          ],
                          //E-Mail
                          CustomTextformFieldWidget(
                              controller: state.runtimeType == AuthModeLogin
                                  ? _emailSignInController
                                  : state.runtimeType == AuthModeSignUp
                                      ? _emailSignUpController
                                      : _emailForgotPasswordController,
                              focusNode: state.runtimeType == AuthModeLogin
                                  ? _emailSignInFocusNode
                                  : state.runtimeType == AuthModeSignUp
                                      ? _emailSignUpFocusNode
                                      : _emailForgotPasswordFocusNode,
                              prefixIcon: _emailIcon,
                              hintText: hintEmail,
                              textInputType: _emailInputType,
                              marginTop: state.runtimeType == AuthModeLogin ||
                                      state.runtimeType ==
                                          AuthModeForgotPassword
                                  ? height * 0.12
                                  : height * 0.015,
                              validator: emailValidator),
                          if (state.runtimeType == AuthModeLogin ||
                              state.runtimeType == AuthModeSignUp)
                            //Password
                            CustomTextformFieldWidget(
                              controller: state.runtimeType == AuthModeLogin
                                  ? _passwordSignInController
                                  : _passwordSignUpController,
                              focusNode: state.runtimeType == AuthModeLogin
                                  ? _passwordSignInFocusNode
                                  : _passwordSignUpFocusNode,
                              obscureText: _obscurePw,
                              prefixIcon: _passwordIcon,
                              hintText: hintPassword,
                              textInputType: _passwordInputType,
                              marginTop: height * 0.015,
                              validator: passwordValidator,
                              isPassword: true,
                              suffixIcon: _obscurePw
                                  ? Platform.isAndroid
                                      ? const Icon(Icons.visibility_rounded)
                                      : const Icon(CupertinoIcons.eye_fill)
                                  : Platform.isAndroid
                                      ? const Icon(Icons.visibility_off_rounded)
                                      : const Icon(
                                          CupertinoIcons.eye_slash_fill,
                                        ),
                            ),
                          if (state.runtimeType == AuthModeSignUp)
                            //Repeat Password
                            CustomTextformFieldWidget(
                              controller: _repeatPasswordController,
                              focusNode: _repeatPasswordFocusNode,
                              obscureText: _obscureRepeatPw,
                              prefixIcon: _passwordIcon,
                              hintText: hintRepeatPassword,
                              textInputType: _passwordInputType,
                              marginTop: height * 0.015,
                              validator: (val) => MatchValidator(
                                      errorText: 'Passwords do not match')
                                  .validateMatch(val.toString(),
                                      _passwordSignUpController.text),
                              suffixIcon: _obscureRepeatPw
                                  ? Platform.isAndroid
                                      ? const Icon(Icons.visibility_rounded)
                                      : const Icon(CupertinoIcons.eye_fill)
                                  : Platform.isAndroid
                                      ? const Icon(Icons.visibility_off_rounded)
                                      : const Icon(
                                          CupertinoIcons.eye_slash_fill,
                                        ),
                              isPassword: true,
                              repeatPassword: true,
                            ),

                          if (state.runtimeType == AuthModeLogin ||
                              state.runtimeType == AuthModeForgotPassword)
                            Container(
                              padding: EdgeInsets.only(
                                right: width * 0.06,
                              ),
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  foregroundColor: Colors.grey[600],
                                  splashFactory: NoSplash.splashFactory,
                                ),
                                onPressed: () {
                                  if (state.runtimeType == AuthModeLogin) {
                                    context
                                        .read<AuthModeCubit>()
                                        .forgotPassword();
                                    _obscurePw = true;
                                    _obscureRepeatPw = true;
                                  } else {
                                    setState(() {
                                      context.read<AuthModeCubit>().login();
                                      _obscurePw = true;
                                      _obscureRepeatPw = true;
                                    });
                                  }
                                },
                                child: Text(
                                  state.runtimeType == AuthModeLogin
                                      ? forgotPassword
                                      : backToLoginText,
                                  style: const TextStyle(
                                    color: Color(0xff191641),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          if (state.runtimeType == AuthModeLogin) ...[
                            SizedBox(
                              height: height * 0.03,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                _googleOrFacebookLogin(
                                  paddingTop: height * 0.0003,
                                  text: googleLogin,
                                  icon: _googleIcon,
                                  onPressed: () {},
                                  color: Colors.red,
                                ),
                                _googleOrFacebookLogin(
                                  paddingTop: height * 0.0003,
                                  text: facebookLogin,
                                  icon: _facebookIcon,
                                  onPressed: () {},
                                  color: Colors.blue,
                                ),
                                _googleOrFacebookLogin(
                                  paddingTop: height * 0.0003,
                                  text: appleLogin,
                                  icon: _appleIcon,
                                  onPressed: () {},
                                  color: Colors.black87,
                                ),
                              ],
                            )
                          ],
                          Padding(
                            padding: EdgeInsets.only(
                              top: height * 0.072,
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                if (state.runtimeType == AuthModeLogin) {
                                  _signInGlobalKey.currentState!.validate();
                                }
                                if (state.runtimeType == AuthModeSignUp) {
                                  _signUpGlobalKey.currentState!.validate();
                                }
                                if (state.runtimeType ==
                                    AuthModeForgotPassword) {
                                  _forgotPwGlobalKey.currentState!.validate();
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                splashFactory: NoSplash.splashFactory,
                                fixedSize: Size(
                                  width * 0.81,
                                  height * 0.05,
                                ),
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      33,
                                    ),
                                  ),
                                ),
                              ),
                              child: Text(
                                state.runtimeType == AuthModeLogin
                                    ? loginText.toUpperCase()
                                    : state.runtimeType == AuthModeSignUp
                                        ? signUpText
                                        : forgotPasswordText,
                              ),
                            ),
                          ),
                          if (state.runtimeType != AuthModeForgotPassword)
                            Padding(
                              padding: EdgeInsets.only(
                                top: state.runtimeType == AuthModeSignUp
                                    ? height * 0.036
                                    : height * 0.059,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    state.runtimeType == AuthModeLogin
                                        ? notAUserText
                                        : alreadyAUserYetText,
                                  ),
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      splashFactory: NoSplash.splashFactory,
                                      tapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                    ),
                                    onPressed: () {
                                      if (state.runtimeType == AuthModeLogin) {
                                        context.read<AuthModeCubit>().signUp();
                                        _obscurePw = true;
                                        _obscureRepeatPw = true;
                                      } else {
                                        context.read<AuthModeCubit>().login();
                                        _obscurePw = true;
                                        _obscureRepeatPw = true;
                                      }
                                    },
                                    child: Text(
                                      state.runtimeType == AuthModeLogin
                                          ? registerText
                                          : loginText,
                                      style: const TextStyle(
                                        color: Color(0xff191641),
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _googleOrFacebookLogin({
    required String text,
    required Icon icon,
    required void Function()? onPressed,
    required Color color,
    required double paddingTop,
  }) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(
        top: paddingTop,
      ),
      child: ElevatedButton(
        child: icon,
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: color,
            splashFactory: NoSplash.splashFactory,
            fixedSize: Size(
              width * 0.046,
              height * 0.046,
            ),
            shape: const CircleBorder()),
      ),
    );
  }

  Future<Widget?> _showDatePicker() async {
    DateFormat formatter = DateFormat('dd.MM.yyyy');
    final initialDate = DateTime.now().subtract(const Duration(days: 6575));
    final newDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(DateTime.now().year - 150),
      lastDate: DateTime.now().subtract(const Duration(days: 6575)),
    );

    if (newDate != null) {
      birthDate = null;
      _birthDateController.text = "";
      setState(() {
        _birthDateController.text = formatter.format(newDate);
      });

      birthDate = newDate;
    }
  }
}
