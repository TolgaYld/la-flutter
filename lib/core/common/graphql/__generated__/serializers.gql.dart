// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;
import 'package:locall_app/core/common/graphql/__generated__/schema.schema.gql.dart'
    show
        GCreateChannelInput,
        GCreateCommentInput,
        GCreatePostInput,
        GCreateReportInput,
        GCreateStoryInput,
        GCreateUserInput,
        GSignInUserInput,
        GUpdateChannelInput,
        GUpdateCommentInput,
        GUpdatePostInput,
        GUpdateReportInput,
        GUpdateStoryInput,
        GUpdateUserInput;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GCreateChannelInput,
  GCreateCommentInput,
  GCreatePostInput,
  GCreateReportInput,
  GCreateStoryInput,
  GCreateUserInput,
  GSignInUserInput,
  GUpdateChannelInput,
  GUpdateCommentInput,
  GUpdatePostInput,
  GUpdateReportInput,
  GUpdateStoryInput,
  GUpdateUserInput,
])
final Serializers serializers = _serializersBuilder.build();
