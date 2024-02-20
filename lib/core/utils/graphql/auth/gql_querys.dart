mixin GqlQuerys {
  static const String checkEmailExistsQuery = '''
query Query(\$email: String!) {
  checkIfEmailExists(email: \$email)
}
''';

  static const String checkUsernameExistsQuery = '''
query Query(\$username: String!) {
  checkIfUsernameExists(username: \$username)

}
''';
}
