mixin GqlMutation {
  static const String signUpMutation = '''
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
      provider
      provider_id
      device_id
      device_type
      auto_generated_username
      username_change_counter
      created_at
    }
    token
    refreshToken
  }
}
''';

  static const String signInMutation = '''
mutation SignInUser(\$data: SignInUserInput!) {
  signInUser(data: \$data) {
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
      provider
      provider_id
      device_id
      device_type
      auto_generated_username
      username_change_counter
      created_at
    }
    token
    refreshToken
  }
}
''';

  static const String authWithProviderMutation = '''
mutation AuthUserWithProvider(\$data: AuthUserWithProviderInput) {
  authUserWithProvider(data: \$data) {
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
      provider
      provider_id
      device_id
      device_type
      auto_generated_username
      username_change_counter
      created_at
    }
    tokens {
      token
      refreshToken
    }
  }
}
''';

  static const String forgotPasswordMutation = '''
mutation ResetPassword(\$email: String) {
  resetPassword(email: \$email) {
    email,
  }
}
''';

  static const String updatePasswordMutation = '''
mutation UpdateUserPassword(\$data: String!) {
  updateUserPassword(data: \$data) {
    tokens {
      token
      refreshToken
    }
  }
}
''';

  static const String updateUserMutation = '''
mutation Mutation(\$data: UpdateUserInput) {
  updateUser(data: \$data) {
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
      provider
      provider_id
      device_id
      device_type
      auto_generated_username
      username_change_counter
      created_at
    }
  }
}
''';
}
