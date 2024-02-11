// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:locall_app/core/common/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'schema.schema.gql.g.dart';

abstract class GCreateUserInput
    implements Built<GCreateUserInput, GCreateUserInputBuilder> {
  GCreateUserInput._();

  factory GCreateUserInput([void Function(GCreateUserInputBuilder b) updates]) =
      _$GCreateUserInput;

  String get username;
  String get email;
  String get password;
  static Serializer<GCreateUserInput> get serializer =>
      _$gCreateUserInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateUserInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateUserInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateUserInput.serializer,
        json,
      );
}

abstract class GSignInUserInput
    implements Built<GSignInUserInput, GSignInUserInputBuilder> {
  GSignInUserInput._();

  factory GSignInUserInput([void Function(GSignInUserInputBuilder b) updates]) =
      _$GSignInUserInput;

  String? get signInEmailOrUsername;
  String get password;
  static Serializer<GSignInUserInput> get serializer =>
      _$gSignInUserInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSignInUserInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSignInUserInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSignInUserInput.serializer,
        json,
      );
}

abstract class GUpdateUserInput
    implements Built<GUpdateUserInput, GUpdateUserInputBuilder> {
  GUpdateUserInput._();

  factory GUpdateUserInput([void Function(GUpdateUserInputBuilder b) updates]) =
      _$GUpdateUserInput;

  String? get email;
  String? get username;
  BuiltList<double> get coordinates;
  int? get distance;
  bool? get official;
  bool? get is_deleted;
  bool? get is_banned;
  bool? get email_confirmed;
  bool? get is_admin;
  String? get last_update_from_user;
  static Serializer<GUpdateUserInput> get serializer =>
      _$gUpdateUserInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUserInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateUserInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateUserInput.serializer,
        json,
      );
}

abstract class GCreateChannelInput
    implements Built<GCreateChannelInput, GCreateChannelInputBuilder> {
  GCreateChannelInput._();

  factory GCreateChannelInput(
          [void Function(GCreateChannelInputBuilder b) updates]) =
      _$GCreateChannelInput;

  String get name;
  static Serializer<GCreateChannelInput> get serializer =>
      _$gCreateChannelInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateChannelInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateChannelInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateChannelInput.serializer,
        json,
      );
}

abstract class GUpdateChannelInput
    implements Built<GUpdateChannelInput, GUpdateChannelInputBuilder> {
  GUpdateChannelInput._();

  factory GUpdateChannelInput(
          [void Function(GUpdateChannelInputBuilder b) updates]) =
      _$GUpdateChannelInput;

  String get name;
  bool? get is_active;
  bool? get is_deleted;
  static Serializer<GUpdateChannelInput> get serializer =>
      _$gUpdateChannelInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateChannelInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateChannelInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateChannelInput.serializer,
        json,
      );
}

abstract class GCreatePostInput
    implements Built<GCreatePostInput, GCreatePostInputBuilder> {
  GCreatePostInput._();

  factory GCreatePostInput([void Function(GCreatePostInputBuilder b) updates]) =
      _$GCreatePostInput;

  BuiltList<double> get coordinates;
  String? get text;
  BuiltList<String?>? get media;
  String get type;
  BuiltList<String> get channels;
  static Serializer<GCreatePostInput> get serializer =>
      _$gCreatePostInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreatePostInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreatePostInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreatePostInput.serializer,
        json,
      );
}

abstract class GUpdatePostInput
    implements Built<GUpdatePostInput, GUpdatePostInputBuilder> {
  GUpdatePostInput._();

  factory GUpdatePostInput([void Function(GUpdatePostInputBuilder b) updates]) =
      _$GUpdatePostInput;

  String get text;
  BuiltList<String?>? get media;
  BuiltList<String?>? get channels;
  String? get type;
  bool? get is_active;
  bool? get is_deleted;
  static Serializer<GUpdatePostInput> get serializer =>
      _$gUpdatePostInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdatePostInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdatePostInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdatePostInput.serializer,
        json,
      );
}

abstract class GCreateCommentInput
    implements Built<GCreateCommentInput, GCreateCommentInputBuilder> {
  GCreateCommentInput._();

  factory GCreateCommentInput(
          [void Function(GCreateCommentInputBuilder b) updates]) =
      _$GCreateCommentInput;

  String? get text;
  BuiltList<String?>? get media;
  String get post;
  String get type;
  String? get last_update_from_user;
  static Serializer<GCreateCommentInput> get serializer =>
      _$gCreateCommentInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateCommentInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateCommentInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateCommentInput.serializer,
        json,
      );
}

abstract class GUpdateCommentInput
    implements Built<GUpdateCommentInput, GUpdateCommentInputBuilder> {
  GUpdateCommentInput._();

  factory GUpdateCommentInput(
          [void Function(GUpdateCommentInputBuilder b) updates]) =
      _$GUpdateCommentInput;

  String get text;
  BuiltList<String?>? get media;
  String? get post;
  String? get type;
  bool? get is_active;
  bool? get is_deleted;
  static Serializer<GUpdateCommentInput> get serializer =>
      _$gUpdateCommentInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateCommentInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateCommentInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateCommentInput.serializer,
        json,
      );
}

abstract class GCreateStoryInput
    implements Built<GCreateStoryInput, GCreateStoryInputBuilder> {
  GCreateStoryInput._();

  factory GCreateStoryInput(
          [void Function(GCreateStoryInputBuilder b) updates]) =
      _$GCreateStoryInput;

  BuiltList<double> get coordinates;
  String? get text;
  BuiltList<String?>? get media;
  String? get type;
  BuiltList<String> get channels;
  static Serializer<GCreateStoryInput> get serializer =>
      _$gCreateStoryInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateStoryInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateStoryInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateStoryInput.serializer,
        json,
      );
}

abstract class GUpdateStoryInput
    implements Built<GUpdateStoryInput, GUpdateStoryInputBuilder> {
  GUpdateStoryInput._();

  factory GUpdateStoryInput(
          [void Function(GUpdateStoryInputBuilder b) updates]) =
      _$GUpdateStoryInput;

  String get text;
  BuiltList<String?>? get media;
  BuiltList<String?>? get channels;
  String? get type;
  bool? get is_active;
  bool? get is_deleted;
  static Serializer<GUpdateStoryInput> get serializer =>
      _$gUpdateStoryInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateStoryInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateStoryInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateStoryInput.serializer,
        json,
      );
}

abstract class GCreateReportInput
    implements Built<GCreateReportInput, GCreateReportInputBuilder> {
  GCreateReportInput._();

  factory GCreateReportInput(
          [void Function(GCreateReportInputBuilder b) updates]) =
      _$GCreateReportInput;

  String get reason;
  String get reported_user;
  String? get channel;
  String? get post;
  String? get comment;
  static Serializer<GCreateReportInput> get serializer =>
      _$gCreateReportInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateReportInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateReportInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateReportInput.serializer,
        json,
      );
}

abstract class GUpdateReportInput
    implements Built<GUpdateReportInput, GUpdateReportInputBuilder> {
  GUpdateReportInput._();

  factory GUpdateReportInput(
          [void Function(GUpdateReportInputBuilder b) updates]) =
      _$GUpdateReportInput;

  String? get reason;
  String? get created_by;
  String? get reported_user;
  String? get channel;
  String? get post;
  String? get comment;
  String? get story;
  bool get is_done;
  String? get notes_about_report;
  bool? get is_deleted;
  static Serializer<GUpdateReportInput> get serializer =>
      _$gUpdateReportInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateReportInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateReportInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateReportInput.serializer,
        json,
      );
}

const Map<String, Set<String>> possibleTypesMap = {};
