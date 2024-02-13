mixin GqlMutation {
  static String signUpMutation = '''
mutation SignUpUser(\$data: SignUpUserInput!) {
  signUpUser(data: \$data) {
    user {
      _id
      username
      email
      location {
        coordinates
      }
      distance
      points
      official
      is_deleted
      is_banned
      is_admin
      auto_generated_username
      username_change_counter
      created_at
    }
  }
}
''';
}
