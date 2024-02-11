// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreateUserInput> _$gCreateUserInputSerializer =
    new _$GCreateUserInputSerializer();
Serializer<GSignInUserInput> _$gSignInUserInputSerializer =
    new _$GSignInUserInputSerializer();
Serializer<GUpdateUserInput> _$gUpdateUserInputSerializer =
    new _$GUpdateUserInputSerializer();
Serializer<GCreateChannelInput> _$gCreateChannelInputSerializer =
    new _$GCreateChannelInputSerializer();
Serializer<GUpdateChannelInput> _$gUpdateChannelInputSerializer =
    new _$GUpdateChannelInputSerializer();
Serializer<GCreatePostInput> _$gCreatePostInputSerializer =
    new _$GCreatePostInputSerializer();
Serializer<GUpdatePostInput> _$gUpdatePostInputSerializer =
    new _$GUpdatePostInputSerializer();
Serializer<GCreateCommentInput> _$gCreateCommentInputSerializer =
    new _$GCreateCommentInputSerializer();
Serializer<GUpdateCommentInput> _$gUpdateCommentInputSerializer =
    new _$GUpdateCommentInputSerializer();
Serializer<GCreateStoryInput> _$gCreateStoryInputSerializer =
    new _$GCreateStoryInputSerializer();
Serializer<GUpdateStoryInput> _$gUpdateStoryInputSerializer =
    new _$GUpdateStoryInputSerializer();
Serializer<GCreateReportInput> _$gCreateReportInputSerializer =
    new _$GCreateReportInputSerializer();
Serializer<GUpdateReportInput> _$gUpdateReportInputSerializer =
    new _$GUpdateReportInputSerializer();

class _$GCreateUserInputSerializer
    implements StructuredSerializer<GCreateUserInput> {
  @override
  final Iterable<Type> types = const [GCreateUserInput, _$GCreateUserInput];
  @override
  final String wireName = 'GCreateUserInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreateUserInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GCreateUserInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateUserInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GSignInUserInputSerializer
    implements StructuredSerializer<GSignInUserInput> {
  @override
  final Iterable<Type> types = const [GSignInUserInput, _$GSignInUserInput];
  @override
  final String wireName = 'GSignInUserInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSignInUserInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.signInEmailOrUsername;
    if (value != null) {
      result
        ..add('signInEmailOrUsername')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GSignInUserInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSignInUserInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'signInEmailOrUsername':
          result.signInEmailOrUsername = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateUserInputSerializer
    implements StructuredSerializer<GUpdateUserInput> {
  @override
  final Iterable<Type> types = const [GUpdateUserInput, _$GUpdateUserInput];
  @override
  final String wireName = 'GUpdateUserInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUpdateUserInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'coordinates',
      serializers.serialize(object.coordinates,
          specifiedType:
              const FullType(BuiltList, const [const FullType(double)])),
    ];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.username;
    if (value != null) {
      result
        ..add('username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.distance;
    if (value != null) {
      result
        ..add('distance')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.official;
    if (value != null) {
      result
        ..add('official')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.is_deleted;
    if (value != null) {
      result
        ..add('is_deleted')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.is_banned;
    if (value != null) {
      result
        ..add('is_banned')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.email_confirmed;
    if (value != null) {
      result
        ..add('email_confirmed')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.is_admin;
    if (value != null) {
      result
        ..add('is_admin')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.last_update_from_user;
    if (value != null) {
      result
        ..add('last_update_from_user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GUpdateUserInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateUserInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'coordinates':
          result.coordinates.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(double)]))!
              as BuiltList<Object?>);
          break;
        case 'distance':
          result.distance = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'official':
          result.official = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'is_deleted':
          result.is_deleted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'is_banned':
          result.is_banned = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'email_confirmed':
          result.email_confirmed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'is_admin':
          result.is_admin = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'last_update_from_user':
          result.last_update_from_user = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateChannelInputSerializer
    implements StructuredSerializer<GCreateChannelInput> {
  @override
  final Iterable<Type> types = const [
    GCreateChannelInput,
    _$GCreateChannelInput
  ];
  @override
  final String wireName = 'GCreateChannelInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateChannelInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GCreateChannelInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateChannelInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateChannelInputSerializer
    implements StructuredSerializer<GUpdateChannelInput> {
  @override
  final Iterable<Type> types = const [
    GUpdateChannelInput,
    _$GUpdateChannelInput
  ];
  @override
  final String wireName = 'GUpdateChannelInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateChannelInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.is_active;
    if (value != null) {
      result
        ..add('is_active')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.is_deleted;
    if (value != null) {
      result
        ..add('is_deleted')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GUpdateChannelInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateChannelInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'is_active':
          result.is_active = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'is_deleted':
          result.is_deleted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreatePostInputSerializer
    implements StructuredSerializer<GCreatePostInput> {
  @override
  final Iterable<Type> types = const [GCreatePostInput, _$GCreatePostInput];
  @override
  final String wireName = 'GCreatePostInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreatePostInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'coordinates',
      serializers.serialize(object.coordinates,
          specifiedType:
              const FullType(BuiltList, const [const FullType(double)])),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'channels',
      serializers.serialize(object.channels,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];
    Object? value;
    value = object.text;
    if (value != null) {
      result
        ..add('text')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    return result;
  }

  @override
  GCreatePostInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreatePostInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'coordinates':
          result.coordinates.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(double)]))!
              as BuiltList<Object?>);
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'media':
          result.media.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'channels':
          result.channels.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdatePostInputSerializer
    implements StructuredSerializer<GUpdatePostInput> {
  @override
  final Iterable<Type> types = const [GUpdatePostInput, _$GUpdatePostInput];
  @override
  final String wireName = 'GUpdatePostInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUpdatePostInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'text',
      serializers.serialize(object.text, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.channels;
    if (value != null) {
      result
        ..add('channels')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.is_active;
    if (value != null) {
      result
        ..add('is_active')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.is_deleted;
    if (value != null) {
      result
        ..add('is_deleted')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GUpdatePostInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdatePostInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'media':
          result.media.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'channels':
          result.channels.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'is_active':
          result.is_active = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'is_deleted':
          result.is_deleted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateCommentInputSerializer
    implements StructuredSerializer<GCreateCommentInput> {
  @override
  final Iterable<Type> types = const [
    GCreateCommentInput,
    _$GCreateCommentInput
  ];
  @override
  final String wireName = 'GCreateCommentInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateCommentInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'post',
      serializers.serialize(object.post, specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.text;
    if (value != null) {
      result
        ..add('text')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.last_update_from_user;
    if (value != null) {
      result
        ..add('last_update_from_user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GCreateCommentInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateCommentInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'media':
          result.media.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'post':
          result.post = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'last_update_from_user':
          result.last_update_from_user = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateCommentInputSerializer
    implements StructuredSerializer<GUpdateCommentInput> {
  @override
  final Iterable<Type> types = const [
    GUpdateCommentInput,
    _$GUpdateCommentInput
  ];
  @override
  final String wireName = 'GUpdateCommentInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateCommentInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'text',
      serializers.serialize(object.text, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.post;
    if (value != null) {
      result
        ..add('post')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.is_active;
    if (value != null) {
      result
        ..add('is_active')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.is_deleted;
    if (value != null) {
      result
        ..add('is_deleted')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GUpdateCommentInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateCommentInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'media':
          result.media.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'post':
          result.post = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'is_active':
          result.is_active = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'is_deleted':
          result.is_deleted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateStoryInputSerializer
    implements StructuredSerializer<GCreateStoryInput> {
  @override
  final Iterable<Type> types = const [GCreateStoryInput, _$GCreateStoryInput];
  @override
  final String wireName = 'GCreateStoryInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreateStoryInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'coordinates',
      serializers.serialize(object.coordinates,
          specifiedType:
              const FullType(BuiltList, const [const FullType(double)])),
      'channels',
      serializers.serialize(object.channels,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];
    Object? value;
    value = object.text;
    if (value != null) {
      result
        ..add('text')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GCreateStoryInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateStoryInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'coordinates':
          result.coordinates.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(double)]))!
              as BuiltList<Object?>);
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'media':
          result.media.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'channels':
          result.channels.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateStoryInputSerializer
    implements StructuredSerializer<GUpdateStoryInput> {
  @override
  final Iterable<Type> types = const [GUpdateStoryInput, _$GUpdateStoryInput];
  @override
  final String wireName = 'GUpdateStoryInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUpdateStoryInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'text',
      serializers.serialize(object.text, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.channels;
    if (value != null) {
      result
        ..add('channels')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.is_active;
    if (value != null) {
      result
        ..add('is_active')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.is_deleted;
    if (value != null) {
      result
        ..add('is_deleted')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GUpdateStoryInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateStoryInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'media':
          result.media.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'channels':
          result.channels.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'is_active':
          result.is_active = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'is_deleted':
          result.is_deleted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateReportInputSerializer
    implements StructuredSerializer<GCreateReportInput> {
  @override
  final Iterable<Type> types = const [GCreateReportInput, _$GCreateReportInput];
  @override
  final String wireName = 'GCreateReportInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateReportInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'reason',
      serializers.serialize(object.reason,
          specifiedType: const FullType(String)),
      'reported_user',
      serializers.serialize(object.reported_user,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.channel;
    if (value != null) {
      result
        ..add('channel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.post;
    if (value != null) {
      result
        ..add('post')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.comment;
    if (value != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GCreateReportInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateReportInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'reason':
          result.reason = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'reported_user':
          result.reported_user = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'channel':
          result.channel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'post':
          result.post = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateReportInputSerializer
    implements StructuredSerializer<GUpdateReportInput> {
  @override
  final Iterable<Type> types = const [GUpdateReportInput, _$GUpdateReportInput];
  @override
  final String wireName = 'GUpdateReportInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateReportInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'is_done',
      serializers.serialize(object.is_done,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.reason;
    if (value != null) {
      result
        ..add('reason')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.created_by;
    if (value != null) {
      result
        ..add('created_by')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reported_user;
    if (value != null) {
      result
        ..add('reported_user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.channel;
    if (value != null) {
      result
        ..add('channel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.post;
    if (value != null) {
      result
        ..add('post')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.comment;
    if (value != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.story;
    if (value != null) {
      result
        ..add('story')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.notes_about_report;
    if (value != null) {
      result
        ..add('notes_about_report')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.is_deleted;
    if (value != null) {
      result
        ..add('is_deleted')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GUpdateReportInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateReportInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'reason':
          result.reason = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_by':
          result.created_by = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'reported_user':
          result.reported_user = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'channel':
          result.channel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'post':
          result.post = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'story':
          result.story = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'is_done':
          result.is_done = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'notes_about_report':
          result.notes_about_report = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'is_deleted':
          result.is_deleted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateUserInput extends GCreateUserInput {
  @override
  final String username;
  @override
  final String email;
  @override
  final String password;

  factory _$GCreateUserInput(
          [void Function(GCreateUserInputBuilder)? updates]) =>
      (new GCreateUserInputBuilder()..update(updates))._build();

  _$GCreateUserInput._(
      {required this.username, required this.email, required this.password})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        username, r'GCreateUserInput', 'username');
    BuiltValueNullFieldError.checkNotNull(email, r'GCreateUserInput', 'email');
    BuiltValueNullFieldError.checkNotNull(
        password, r'GCreateUserInput', 'password');
  }

  @override
  GCreateUserInput rebuild(void Function(GCreateUserInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateUserInputBuilder toBuilder() =>
      new GCreateUserInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateUserInput &&
        username == other.username &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateUserInput')
          ..add('username', username)
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class GCreateUserInputBuilder
    implements Builder<GCreateUserInput, GCreateUserInputBuilder> {
  _$GCreateUserInput? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  GCreateUserInputBuilder();

  GCreateUserInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _email = $v.email;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateUserInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateUserInput;
  }

  @override
  void update(void Function(GCreateUserInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateUserInput build() => _build();

  _$GCreateUserInput _build() {
    final _$result = _$v ??
        new _$GCreateUserInput._(
            username: BuiltValueNullFieldError.checkNotNull(
                username, r'GCreateUserInput', 'username'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'GCreateUserInput', 'email'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'GCreateUserInput', 'password'));
    replace(_$result);
    return _$result;
  }
}

class _$GSignInUserInput extends GSignInUserInput {
  @override
  final String? signInEmailOrUsername;
  @override
  final String password;

  factory _$GSignInUserInput(
          [void Function(GSignInUserInputBuilder)? updates]) =>
      (new GSignInUserInputBuilder()..update(updates))._build();

  _$GSignInUserInput._({this.signInEmailOrUsername, required this.password})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        password, r'GSignInUserInput', 'password');
  }

  @override
  GSignInUserInput rebuild(void Function(GSignInUserInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSignInUserInputBuilder toBuilder() =>
      new GSignInUserInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSignInUserInput &&
        signInEmailOrUsername == other.signInEmailOrUsername &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, signInEmailOrUsername.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSignInUserInput')
          ..add('signInEmailOrUsername', signInEmailOrUsername)
          ..add('password', password))
        .toString();
  }
}

class GSignInUserInputBuilder
    implements Builder<GSignInUserInput, GSignInUserInputBuilder> {
  _$GSignInUserInput? _$v;

  String? _signInEmailOrUsername;
  String? get signInEmailOrUsername => _$this._signInEmailOrUsername;
  set signInEmailOrUsername(String? signInEmailOrUsername) =>
      _$this._signInEmailOrUsername = signInEmailOrUsername;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  GSignInUserInputBuilder();

  GSignInUserInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _signInEmailOrUsername = $v.signInEmailOrUsername;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSignInUserInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSignInUserInput;
  }

  @override
  void update(void Function(GSignInUserInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSignInUserInput build() => _build();

  _$GSignInUserInput _build() {
    final _$result = _$v ??
        new _$GSignInUserInput._(
            signInEmailOrUsername: signInEmailOrUsername,
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'GSignInUserInput', 'password'));
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateUserInput extends GUpdateUserInput {
  @override
  final String? email;
  @override
  final String? username;
  @override
  final BuiltList<double> coordinates;
  @override
  final int? distance;
  @override
  final bool? official;
  @override
  final bool? is_deleted;
  @override
  final bool? is_banned;
  @override
  final bool? email_confirmed;
  @override
  final bool? is_admin;
  @override
  final String? last_update_from_user;

  factory _$GUpdateUserInput(
          [void Function(GUpdateUserInputBuilder)? updates]) =>
      (new GUpdateUserInputBuilder()..update(updates))._build();

  _$GUpdateUserInput._(
      {this.email,
      this.username,
      required this.coordinates,
      this.distance,
      this.official,
      this.is_deleted,
      this.is_banned,
      this.email_confirmed,
      this.is_admin,
      this.last_update_from_user})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        coordinates, r'GUpdateUserInput', 'coordinates');
  }

  @override
  GUpdateUserInput rebuild(void Function(GUpdateUserInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateUserInputBuilder toBuilder() =>
      new GUpdateUserInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateUserInput &&
        email == other.email &&
        username == other.username &&
        coordinates == other.coordinates &&
        distance == other.distance &&
        official == other.official &&
        is_deleted == other.is_deleted &&
        is_banned == other.is_banned &&
        email_confirmed == other.email_confirmed &&
        is_admin == other.is_admin &&
        last_update_from_user == other.last_update_from_user;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, coordinates.hashCode);
    _$hash = $jc(_$hash, distance.hashCode);
    _$hash = $jc(_$hash, official.hashCode);
    _$hash = $jc(_$hash, is_deleted.hashCode);
    _$hash = $jc(_$hash, is_banned.hashCode);
    _$hash = $jc(_$hash, email_confirmed.hashCode);
    _$hash = $jc(_$hash, is_admin.hashCode);
    _$hash = $jc(_$hash, last_update_from_user.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateUserInput')
          ..add('email', email)
          ..add('username', username)
          ..add('coordinates', coordinates)
          ..add('distance', distance)
          ..add('official', official)
          ..add('is_deleted', is_deleted)
          ..add('is_banned', is_banned)
          ..add('email_confirmed', email_confirmed)
          ..add('is_admin', is_admin)
          ..add('last_update_from_user', last_update_from_user))
        .toString();
  }
}

class GUpdateUserInputBuilder
    implements Builder<GUpdateUserInput, GUpdateUserInputBuilder> {
  _$GUpdateUserInput? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  ListBuilder<double>? _coordinates;
  ListBuilder<double> get coordinates =>
      _$this._coordinates ??= new ListBuilder<double>();
  set coordinates(ListBuilder<double>? coordinates) =>
      _$this._coordinates = coordinates;

  int? _distance;
  int? get distance => _$this._distance;
  set distance(int? distance) => _$this._distance = distance;

  bool? _official;
  bool? get official => _$this._official;
  set official(bool? official) => _$this._official = official;

  bool? _is_deleted;
  bool? get is_deleted => _$this._is_deleted;
  set is_deleted(bool? is_deleted) => _$this._is_deleted = is_deleted;

  bool? _is_banned;
  bool? get is_banned => _$this._is_banned;
  set is_banned(bool? is_banned) => _$this._is_banned = is_banned;

  bool? _email_confirmed;
  bool? get email_confirmed => _$this._email_confirmed;
  set email_confirmed(bool? email_confirmed) =>
      _$this._email_confirmed = email_confirmed;

  bool? _is_admin;
  bool? get is_admin => _$this._is_admin;
  set is_admin(bool? is_admin) => _$this._is_admin = is_admin;

  String? _last_update_from_user;
  String? get last_update_from_user => _$this._last_update_from_user;
  set last_update_from_user(String? last_update_from_user) =>
      _$this._last_update_from_user = last_update_from_user;

  GUpdateUserInputBuilder();

  GUpdateUserInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _username = $v.username;
      _coordinates = $v.coordinates.toBuilder();
      _distance = $v.distance;
      _official = $v.official;
      _is_deleted = $v.is_deleted;
      _is_banned = $v.is_banned;
      _email_confirmed = $v.email_confirmed;
      _is_admin = $v.is_admin;
      _last_update_from_user = $v.last_update_from_user;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateUserInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateUserInput;
  }

  @override
  void update(void Function(GUpdateUserInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateUserInput build() => _build();

  _$GUpdateUserInput _build() {
    _$GUpdateUserInput _$result;
    try {
      _$result = _$v ??
          new _$GUpdateUserInput._(
              email: email,
              username: username,
              coordinates: coordinates.build(),
              distance: distance,
              official: official,
              is_deleted: is_deleted,
              is_banned: is_banned,
              email_confirmed: email_confirmed,
              is_admin: is_admin,
              last_update_from_user: last_update_from_user);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'coordinates';
        coordinates.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUpdateUserInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateChannelInput extends GCreateChannelInput {
  @override
  final String name;

  factory _$GCreateChannelInput(
          [void Function(GCreateChannelInputBuilder)? updates]) =>
      (new GCreateChannelInputBuilder()..update(updates))._build();

  _$GCreateChannelInput._({required this.name}) : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'GCreateChannelInput', 'name');
  }

  @override
  GCreateChannelInput rebuild(
          void Function(GCreateChannelInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateChannelInputBuilder toBuilder() =>
      new GCreateChannelInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateChannelInput && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateChannelInput')
          ..add('name', name))
        .toString();
  }
}

class GCreateChannelInputBuilder
    implements Builder<GCreateChannelInput, GCreateChannelInputBuilder> {
  _$GCreateChannelInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GCreateChannelInputBuilder();

  GCreateChannelInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateChannelInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateChannelInput;
  }

  @override
  void update(void Function(GCreateChannelInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateChannelInput build() => _build();

  _$GCreateChannelInput _build() {
    final _$result = _$v ??
        new _$GCreateChannelInput._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GCreateChannelInput', 'name'));
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateChannelInput extends GUpdateChannelInput {
  @override
  final String name;
  @override
  final bool? is_active;
  @override
  final bool? is_deleted;

  factory _$GUpdateChannelInput(
          [void Function(GUpdateChannelInputBuilder)? updates]) =>
      (new GUpdateChannelInputBuilder()..update(updates))._build();

  _$GUpdateChannelInput._({required this.name, this.is_active, this.is_deleted})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'GUpdateChannelInput', 'name');
  }

  @override
  GUpdateChannelInput rebuild(
          void Function(GUpdateChannelInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateChannelInputBuilder toBuilder() =>
      new GUpdateChannelInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateChannelInput &&
        name == other.name &&
        is_active == other.is_active &&
        is_deleted == other.is_deleted;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, is_active.hashCode);
    _$hash = $jc(_$hash, is_deleted.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateChannelInput')
          ..add('name', name)
          ..add('is_active', is_active)
          ..add('is_deleted', is_deleted))
        .toString();
  }
}

class GUpdateChannelInputBuilder
    implements Builder<GUpdateChannelInput, GUpdateChannelInputBuilder> {
  _$GUpdateChannelInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _is_active;
  bool? get is_active => _$this._is_active;
  set is_active(bool? is_active) => _$this._is_active = is_active;

  bool? _is_deleted;
  bool? get is_deleted => _$this._is_deleted;
  set is_deleted(bool? is_deleted) => _$this._is_deleted = is_deleted;

  GUpdateChannelInputBuilder();

  GUpdateChannelInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _is_active = $v.is_active;
      _is_deleted = $v.is_deleted;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateChannelInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateChannelInput;
  }

  @override
  void update(void Function(GUpdateChannelInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateChannelInput build() => _build();

  _$GUpdateChannelInput _build() {
    final _$result = _$v ??
        new _$GUpdateChannelInput._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GUpdateChannelInput', 'name'),
            is_active: is_active,
            is_deleted: is_deleted);
    replace(_$result);
    return _$result;
  }
}

class _$GCreatePostInput extends GCreatePostInput {
  @override
  final BuiltList<double> coordinates;
  @override
  final String? text;
  @override
  final BuiltList<String?>? media;
  @override
  final String type;
  @override
  final BuiltList<String> channels;

  factory _$GCreatePostInput(
          [void Function(GCreatePostInputBuilder)? updates]) =>
      (new GCreatePostInputBuilder()..update(updates))._build();

  _$GCreatePostInput._(
      {required this.coordinates,
      this.text,
      this.media,
      required this.type,
      required this.channels})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        coordinates, r'GCreatePostInput', 'coordinates');
    BuiltValueNullFieldError.checkNotNull(type, r'GCreatePostInput', 'type');
    BuiltValueNullFieldError.checkNotNull(
        channels, r'GCreatePostInput', 'channels');
  }

  @override
  GCreatePostInput rebuild(void Function(GCreatePostInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreatePostInputBuilder toBuilder() =>
      new GCreatePostInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreatePostInput &&
        coordinates == other.coordinates &&
        text == other.text &&
        media == other.media &&
        type == other.type &&
        channels == other.channels;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, coordinates.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, channels.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreatePostInput')
          ..add('coordinates', coordinates)
          ..add('text', text)
          ..add('media', media)
          ..add('type', type)
          ..add('channels', channels))
        .toString();
  }
}

class GCreatePostInputBuilder
    implements Builder<GCreatePostInput, GCreatePostInputBuilder> {
  _$GCreatePostInput? _$v;

  ListBuilder<double>? _coordinates;
  ListBuilder<double> get coordinates =>
      _$this._coordinates ??= new ListBuilder<double>();
  set coordinates(ListBuilder<double>? coordinates) =>
      _$this._coordinates = coordinates;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  ListBuilder<String?>? _media;
  ListBuilder<String?> get media =>
      _$this._media ??= new ListBuilder<String?>();
  set media(ListBuilder<String?>? media) => _$this._media = media;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  ListBuilder<String>? _channels;
  ListBuilder<String> get channels =>
      _$this._channels ??= new ListBuilder<String>();
  set channels(ListBuilder<String>? channels) => _$this._channels = channels;

  GCreatePostInputBuilder();

  GCreatePostInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _coordinates = $v.coordinates.toBuilder();
      _text = $v.text;
      _media = $v.media?.toBuilder();
      _type = $v.type;
      _channels = $v.channels.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreatePostInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreatePostInput;
  }

  @override
  void update(void Function(GCreatePostInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreatePostInput build() => _build();

  _$GCreatePostInput _build() {
    _$GCreatePostInput _$result;
    try {
      _$result = _$v ??
          new _$GCreatePostInput._(
              coordinates: coordinates.build(),
              text: text,
              media: _media?.build(),
              type: BuiltValueNullFieldError.checkNotNull(
                  type, r'GCreatePostInput', 'type'),
              channels: channels.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'coordinates';
        coordinates.build();

        _$failedField = 'media';
        _media?.build();

        _$failedField = 'channels';
        channels.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreatePostInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdatePostInput extends GUpdatePostInput {
  @override
  final String text;
  @override
  final BuiltList<String?>? media;
  @override
  final BuiltList<String?>? channels;
  @override
  final String? type;
  @override
  final bool? is_active;
  @override
  final bool? is_deleted;

  factory _$GUpdatePostInput(
          [void Function(GUpdatePostInputBuilder)? updates]) =>
      (new GUpdatePostInputBuilder()..update(updates))._build();

  _$GUpdatePostInput._(
      {required this.text,
      this.media,
      this.channels,
      this.type,
      this.is_active,
      this.is_deleted})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(text, r'GUpdatePostInput', 'text');
  }

  @override
  GUpdatePostInput rebuild(void Function(GUpdatePostInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdatePostInputBuilder toBuilder() =>
      new GUpdatePostInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdatePostInput &&
        text == other.text &&
        media == other.media &&
        channels == other.channels &&
        type == other.type &&
        is_active == other.is_active &&
        is_deleted == other.is_deleted;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jc(_$hash, channels.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, is_active.hashCode);
    _$hash = $jc(_$hash, is_deleted.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdatePostInput')
          ..add('text', text)
          ..add('media', media)
          ..add('channels', channels)
          ..add('type', type)
          ..add('is_active', is_active)
          ..add('is_deleted', is_deleted))
        .toString();
  }
}

class GUpdatePostInputBuilder
    implements Builder<GUpdatePostInput, GUpdatePostInputBuilder> {
  _$GUpdatePostInput? _$v;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  ListBuilder<String?>? _media;
  ListBuilder<String?> get media =>
      _$this._media ??= new ListBuilder<String?>();
  set media(ListBuilder<String?>? media) => _$this._media = media;

  ListBuilder<String?>? _channels;
  ListBuilder<String?> get channels =>
      _$this._channels ??= new ListBuilder<String?>();
  set channels(ListBuilder<String?>? channels) => _$this._channels = channels;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  bool? _is_active;
  bool? get is_active => _$this._is_active;
  set is_active(bool? is_active) => _$this._is_active = is_active;

  bool? _is_deleted;
  bool? get is_deleted => _$this._is_deleted;
  set is_deleted(bool? is_deleted) => _$this._is_deleted = is_deleted;

  GUpdatePostInputBuilder();

  GUpdatePostInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _text = $v.text;
      _media = $v.media?.toBuilder();
      _channels = $v.channels?.toBuilder();
      _type = $v.type;
      _is_active = $v.is_active;
      _is_deleted = $v.is_deleted;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdatePostInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdatePostInput;
  }

  @override
  void update(void Function(GUpdatePostInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdatePostInput build() => _build();

  _$GUpdatePostInput _build() {
    _$GUpdatePostInput _$result;
    try {
      _$result = _$v ??
          new _$GUpdatePostInput._(
              text: BuiltValueNullFieldError.checkNotNull(
                  text, r'GUpdatePostInput', 'text'),
              media: _media?.build(),
              channels: _channels?.build(),
              type: type,
              is_active: is_active,
              is_deleted: is_deleted);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'media';
        _media?.build();
        _$failedField = 'channels';
        _channels?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUpdatePostInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateCommentInput extends GCreateCommentInput {
  @override
  final String? text;
  @override
  final BuiltList<String?>? media;
  @override
  final String post;
  @override
  final String type;
  @override
  final String? last_update_from_user;

  factory _$GCreateCommentInput(
          [void Function(GCreateCommentInputBuilder)? updates]) =>
      (new GCreateCommentInputBuilder()..update(updates))._build();

  _$GCreateCommentInput._(
      {this.text,
      this.media,
      required this.post,
      required this.type,
      this.last_update_from_user})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(post, r'GCreateCommentInput', 'post');
    BuiltValueNullFieldError.checkNotNull(type, r'GCreateCommentInput', 'type');
  }

  @override
  GCreateCommentInput rebuild(
          void Function(GCreateCommentInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateCommentInputBuilder toBuilder() =>
      new GCreateCommentInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateCommentInput &&
        text == other.text &&
        media == other.media &&
        post == other.post &&
        type == other.type &&
        last_update_from_user == other.last_update_from_user;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jc(_$hash, post.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, last_update_from_user.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateCommentInput')
          ..add('text', text)
          ..add('media', media)
          ..add('post', post)
          ..add('type', type)
          ..add('last_update_from_user', last_update_from_user))
        .toString();
  }
}

class GCreateCommentInputBuilder
    implements Builder<GCreateCommentInput, GCreateCommentInputBuilder> {
  _$GCreateCommentInput? _$v;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  ListBuilder<String?>? _media;
  ListBuilder<String?> get media =>
      _$this._media ??= new ListBuilder<String?>();
  set media(ListBuilder<String?>? media) => _$this._media = media;

  String? _post;
  String? get post => _$this._post;
  set post(String? post) => _$this._post = post;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _last_update_from_user;
  String? get last_update_from_user => _$this._last_update_from_user;
  set last_update_from_user(String? last_update_from_user) =>
      _$this._last_update_from_user = last_update_from_user;

  GCreateCommentInputBuilder();

  GCreateCommentInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _text = $v.text;
      _media = $v.media?.toBuilder();
      _post = $v.post;
      _type = $v.type;
      _last_update_from_user = $v.last_update_from_user;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateCommentInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateCommentInput;
  }

  @override
  void update(void Function(GCreateCommentInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateCommentInput build() => _build();

  _$GCreateCommentInput _build() {
    _$GCreateCommentInput _$result;
    try {
      _$result = _$v ??
          new _$GCreateCommentInput._(
              text: text,
              media: _media?.build(),
              post: BuiltValueNullFieldError.checkNotNull(
                  post, r'GCreateCommentInput', 'post'),
              type: BuiltValueNullFieldError.checkNotNull(
                  type, r'GCreateCommentInput', 'type'),
              last_update_from_user: last_update_from_user);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'media';
        _media?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateCommentInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateCommentInput extends GUpdateCommentInput {
  @override
  final String text;
  @override
  final BuiltList<String?>? media;
  @override
  final String? post;
  @override
  final String? type;
  @override
  final bool? is_active;
  @override
  final bool? is_deleted;

  factory _$GUpdateCommentInput(
          [void Function(GUpdateCommentInputBuilder)? updates]) =>
      (new GUpdateCommentInputBuilder()..update(updates))._build();

  _$GUpdateCommentInput._(
      {required this.text,
      this.media,
      this.post,
      this.type,
      this.is_active,
      this.is_deleted})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(text, r'GUpdateCommentInput', 'text');
  }

  @override
  GUpdateCommentInput rebuild(
          void Function(GUpdateCommentInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateCommentInputBuilder toBuilder() =>
      new GUpdateCommentInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateCommentInput &&
        text == other.text &&
        media == other.media &&
        post == other.post &&
        type == other.type &&
        is_active == other.is_active &&
        is_deleted == other.is_deleted;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jc(_$hash, post.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, is_active.hashCode);
    _$hash = $jc(_$hash, is_deleted.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateCommentInput')
          ..add('text', text)
          ..add('media', media)
          ..add('post', post)
          ..add('type', type)
          ..add('is_active', is_active)
          ..add('is_deleted', is_deleted))
        .toString();
  }
}

class GUpdateCommentInputBuilder
    implements Builder<GUpdateCommentInput, GUpdateCommentInputBuilder> {
  _$GUpdateCommentInput? _$v;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  ListBuilder<String?>? _media;
  ListBuilder<String?> get media =>
      _$this._media ??= new ListBuilder<String?>();
  set media(ListBuilder<String?>? media) => _$this._media = media;

  String? _post;
  String? get post => _$this._post;
  set post(String? post) => _$this._post = post;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  bool? _is_active;
  bool? get is_active => _$this._is_active;
  set is_active(bool? is_active) => _$this._is_active = is_active;

  bool? _is_deleted;
  bool? get is_deleted => _$this._is_deleted;
  set is_deleted(bool? is_deleted) => _$this._is_deleted = is_deleted;

  GUpdateCommentInputBuilder();

  GUpdateCommentInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _text = $v.text;
      _media = $v.media?.toBuilder();
      _post = $v.post;
      _type = $v.type;
      _is_active = $v.is_active;
      _is_deleted = $v.is_deleted;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateCommentInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateCommentInput;
  }

  @override
  void update(void Function(GUpdateCommentInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateCommentInput build() => _build();

  _$GUpdateCommentInput _build() {
    _$GUpdateCommentInput _$result;
    try {
      _$result = _$v ??
          new _$GUpdateCommentInput._(
              text: BuiltValueNullFieldError.checkNotNull(
                  text, r'GUpdateCommentInput', 'text'),
              media: _media?.build(),
              post: post,
              type: type,
              is_active: is_active,
              is_deleted: is_deleted);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'media';
        _media?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUpdateCommentInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateStoryInput extends GCreateStoryInput {
  @override
  final BuiltList<double> coordinates;
  @override
  final String? text;
  @override
  final BuiltList<String?>? media;
  @override
  final String? type;
  @override
  final BuiltList<String> channels;

  factory _$GCreateStoryInput(
          [void Function(GCreateStoryInputBuilder)? updates]) =>
      (new GCreateStoryInputBuilder()..update(updates))._build();

  _$GCreateStoryInput._(
      {required this.coordinates,
      this.text,
      this.media,
      this.type,
      required this.channels})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        coordinates, r'GCreateStoryInput', 'coordinates');
    BuiltValueNullFieldError.checkNotNull(
        channels, r'GCreateStoryInput', 'channels');
  }

  @override
  GCreateStoryInput rebuild(void Function(GCreateStoryInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateStoryInputBuilder toBuilder() =>
      new GCreateStoryInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateStoryInput &&
        coordinates == other.coordinates &&
        text == other.text &&
        media == other.media &&
        type == other.type &&
        channels == other.channels;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, coordinates.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, channels.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateStoryInput')
          ..add('coordinates', coordinates)
          ..add('text', text)
          ..add('media', media)
          ..add('type', type)
          ..add('channels', channels))
        .toString();
  }
}

class GCreateStoryInputBuilder
    implements Builder<GCreateStoryInput, GCreateStoryInputBuilder> {
  _$GCreateStoryInput? _$v;

  ListBuilder<double>? _coordinates;
  ListBuilder<double> get coordinates =>
      _$this._coordinates ??= new ListBuilder<double>();
  set coordinates(ListBuilder<double>? coordinates) =>
      _$this._coordinates = coordinates;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  ListBuilder<String?>? _media;
  ListBuilder<String?> get media =>
      _$this._media ??= new ListBuilder<String?>();
  set media(ListBuilder<String?>? media) => _$this._media = media;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  ListBuilder<String>? _channels;
  ListBuilder<String> get channels =>
      _$this._channels ??= new ListBuilder<String>();
  set channels(ListBuilder<String>? channels) => _$this._channels = channels;

  GCreateStoryInputBuilder();

  GCreateStoryInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _coordinates = $v.coordinates.toBuilder();
      _text = $v.text;
      _media = $v.media?.toBuilder();
      _type = $v.type;
      _channels = $v.channels.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateStoryInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateStoryInput;
  }

  @override
  void update(void Function(GCreateStoryInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateStoryInput build() => _build();

  _$GCreateStoryInput _build() {
    _$GCreateStoryInput _$result;
    try {
      _$result = _$v ??
          new _$GCreateStoryInput._(
              coordinates: coordinates.build(),
              text: text,
              media: _media?.build(),
              type: type,
              channels: channels.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'coordinates';
        coordinates.build();

        _$failedField = 'media';
        _media?.build();

        _$failedField = 'channels';
        channels.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateStoryInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateStoryInput extends GUpdateStoryInput {
  @override
  final String text;
  @override
  final BuiltList<String?>? media;
  @override
  final BuiltList<String?>? channels;
  @override
  final String? type;
  @override
  final bool? is_active;
  @override
  final bool? is_deleted;

  factory _$GUpdateStoryInput(
          [void Function(GUpdateStoryInputBuilder)? updates]) =>
      (new GUpdateStoryInputBuilder()..update(updates))._build();

  _$GUpdateStoryInput._(
      {required this.text,
      this.media,
      this.channels,
      this.type,
      this.is_active,
      this.is_deleted})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(text, r'GUpdateStoryInput', 'text');
  }

  @override
  GUpdateStoryInput rebuild(void Function(GUpdateStoryInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateStoryInputBuilder toBuilder() =>
      new GUpdateStoryInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateStoryInput &&
        text == other.text &&
        media == other.media &&
        channels == other.channels &&
        type == other.type &&
        is_active == other.is_active &&
        is_deleted == other.is_deleted;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jc(_$hash, channels.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, is_active.hashCode);
    _$hash = $jc(_$hash, is_deleted.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateStoryInput')
          ..add('text', text)
          ..add('media', media)
          ..add('channels', channels)
          ..add('type', type)
          ..add('is_active', is_active)
          ..add('is_deleted', is_deleted))
        .toString();
  }
}

class GUpdateStoryInputBuilder
    implements Builder<GUpdateStoryInput, GUpdateStoryInputBuilder> {
  _$GUpdateStoryInput? _$v;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  ListBuilder<String?>? _media;
  ListBuilder<String?> get media =>
      _$this._media ??= new ListBuilder<String?>();
  set media(ListBuilder<String?>? media) => _$this._media = media;

  ListBuilder<String?>? _channels;
  ListBuilder<String?> get channels =>
      _$this._channels ??= new ListBuilder<String?>();
  set channels(ListBuilder<String?>? channels) => _$this._channels = channels;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  bool? _is_active;
  bool? get is_active => _$this._is_active;
  set is_active(bool? is_active) => _$this._is_active = is_active;

  bool? _is_deleted;
  bool? get is_deleted => _$this._is_deleted;
  set is_deleted(bool? is_deleted) => _$this._is_deleted = is_deleted;

  GUpdateStoryInputBuilder();

  GUpdateStoryInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _text = $v.text;
      _media = $v.media?.toBuilder();
      _channels = $v.channels?.toBuilder();
      _type = $v.type;
      _is_active = $v.is_active;
      _is_deleted = $v.is_deleted;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateStoryInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateStoryInput;
  }

  @override
  void update(void Function(GUpdateStoryInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateStoryInput build() => _build();

  _$GUpdateStoryInput _build() {
    _$GUpdateStoryInput _$result;
    try {
      _$result = _$v ??
          new _$GUpdateStoryInput._(
              text: BuiltValueNullFieldError.checkNotNull(
                  text, r'GUpdateStoryInput', 'text'),
              media: _media?.build(),
              channels: _channels?.build(),
              type: type,
              is_active: is_active,
              is_deleted: is_deleted);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'media';
        _media?.build();
        _$failedField = 'channels';
        _channels?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUpdateStoryInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateReportInput extends GCreateReportInput {
  @override
  final String reason;
  @override
  final String reported_user;
  @override
  final String? channel;
  @override
  final String? post;
  @override
  final String? comment;

  factory _$GCreateReportInput(
          [void Function(GCreateReportInputBuilder)? updates]) =>
      (new GCreateReportInputBuilder()..update(updates))._build();

  _$GCreateReportInput._(
      {required this.reason,
      required this.reported_user,
      this.channel,
      this.post,
      this.comment})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        reason, r'GCreateReportInput', 'reason');
    BuiltValueNullFieldError.checkNotNull(
        reported_user, r'GCreateReportInput', 'reported_user');
  }

  @override
  GCreateReportInput rebuild(
          void Function(GCreateReportInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateReportInputBuilder toBuilder() =>
      new GCreateReportInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateReportInput &&
        reason == other.reason &&
        reported_user == other.reported_user &&
        channel == other.channel &&
        post == other.post &&
        comment == other.comment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, reported_user.hashCode);
    _$hash = $jc(_$hash, channel.hashCode);
    _$hash = $jc(_$hash, post.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateReportInput')
          ..add('reason', reason)
          ..add('reported_user', reported_user)
          ..add('channel', channel)
          ..add('post', post)
          ..add('comment', comment))
        .toString();
  }
}

class GCreateReportInputBuilder
    implements Builder<GCreateReportInput, GCreateReportInputBuilder> {
  _$GCreateReportInput? _$v;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  String? _reported_user;
  String? get reported_user => _$this._reported_user;
  set reported_user(String? reported_user) =>
      _$this._reported_user = reported_user;

  String? _channel;
  String? get channel => _$this._channel;
  set channel(String? channel) => _$this._channel = channel;

  String? _post;
  String? get post => _$this._post;
  set post(String? post) => _$this._post = post;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  GCreateReportInputBuilder();

  GCreateReportInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reason = $v.reason;
      _reported_user = $v.reported_user;
      _channel = $v.channel;
      _post = $v.post;
      _comment = $v.comment;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateReportInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateReportInput;
  }

  @override
  void update(void Function(GCreateReportInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateReportInput build() => _build();

  _$GCreateReportInput _build() {
    final _$result = _$v ??
        new _$GCreateReportInput._(
            reason: BuiltValueNullFieldError.checkNotNull(
                reason, r'GCreateReportInput', 'reason'),
            reported_user: BuiltValueNullFieldError.checkNotNull(
                reported_user, r'GCreateReportInput', 'reported_user'),
            channel: channel,
            post: post,
            comment: comment);
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateReportInput extends GUpdateReportInput {
  @override
  final String? reason;
  @override
  final String? created_by;
  @override
  final String? reported_user;
  @override
  final String? channel;
  @override
  final String? post;
  @override
  final String? comment;
  @override
  final String? story;
  @override
  final bool is_done;
  @override
  final String? notes_about_report;
  @override
  final bool? is_deleted;

  factory _$GUpdateReportInput(
          [void Function(GUpdateReportInputBuilder)? updates]) =>
      (new GUpdateReportInputBuilder()..update(updates))._build();

  _$GUpdateReportInput._(
      {this.reason,
      this.created_by,
      this.reported_user,
      this.channel,
      this.post,
      this.comment,
      this.story,
      required this.is_done,
      this.notes_about_report,
      this.is_deleted})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        is_done, r'GUpdateReportInput', 'is_done');
  }

  @override
  GUpdateReportInput rebuild(
          void Function(GUpdateReportInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateReportInputBuilder toBuilder() =>
      new GUpdateReportInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateReportInput &&
        reason == other.reason &&
        created_by == other.created_by &&
        reported_user == other.reported_user &&
        channel == other.channel &&
        post == other.post &&
        comment == other.comment &&
        story == other.story &&
        is_done == other.is_done &&
        notes_about_report == other.notes_about_report &&
        is_deleted == other.is_deleted;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, created_by.hashCode);
    _$hash = $jc(_$hash, reported_user.hashCode);
    _$hash = $jc(_$hash, channel.hashCode);
    _$hash = $jc(_$hash, post.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, story.hashCode);
    _$hash = $jc(_$hash, is_done.hashCode);
    _$hash = $jc(_$hash, notes_about_report.hashCode);
    _$hash = $jc(_$hash, is_deleted.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateReportInput')
          ..add('reason', reason)
          ..add('created_by', created_by)
          ..add('reported_user', reported_user)
          ..add('channel', channel)
          ..add('post', post)
          ..add('comment', comment)
          ..add('story', story)
          ..add('is_done', is_done)
          ..add('notes_about_report', notes_about_report)
          ..add('is_deleted', is_deleted))
        .toString();
  }
}

class GUpdateReportInputBuilder
    implements Builder<GUpdateReportInput, GUpdateReportInputBuilder> {
  _$GUpdateReportInput? _$v;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  String? _created_by;
  String? get created_by => _$this._created_by;
  set created_by(String? created_by) => _$this._created_by = created_by;

  String? _reported_user;
  String? get reported_user => _$this._reported_user;
  set reported_user(String? reported_user) =>
      _$this._reported_user = reported_user;

  String? _channel;
  String? get channel => _$this._channel;
  set channel(String? channel) => _$this._channel = channel;

  String? _post;
  String? get post => _$this._post;
  set post(String? post) => _$this._post = post;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  String? _story;
  String? get story => _$this._story;
  set story(String? story) => _$this._story = story;

  bool? _is_done;
  bool? get is_done => _$this._is_done;
  set is_done(bool? is_done) => _$this._is_done = is_done;

  String? _notes_about_report;
  String? get notes_about_report => _$this._notes_about_report;
  set notes_about_report(String? notes_about_report) =>
      _$this._notes_about_report = notes_about_report;

  bool? _is_deleted;
  bool? get is_deleted => _$this._is_deleted;
  set is_deleted(bool? is_deleted) => _$this._is_deleted = is_deleted;

  GUpdateReportInputBuilder();

  GUpdateReportInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reason = $v.reason;
      _created_by = $v.created_by;
      _reported_user = $v.reported_user;
      _channel = $v.channel;
      _post = $v.post;
      _comment = $v.comment;
      _story = $v.story;
      _is_done = $v.is_done;
      _notes_about_report = $v.notes_about_report;
      _is_deleted = $v.is_deleted;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateReportInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateReportInput;
  }

  @override
  void update(void Function(GUpdateReportInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateReportInput build() => _build();

  _$GUpdateReportInput _build() {
    final _$result = _$v ??
        new _$GUpdateReportInput._(
            reason: reason,
            created_by: created_by,
            reported_user: reported_user,
            channel: channel,
            post: post,
            comment: comment,
            story: story,
            is_done: BuiltValueNullFieldError.checkNotNull(
                is_done, r'GUpdateReportInput', 'is_done'),
            notes_about_report: notes_about_report,
            is_deleted: is_deleted);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
