// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SubscriptionState {
  List<PackageModel> get packages => throw _privateConstructorUsedError;
  int? get selectedPackage => throw _privateConstructorUsedError;
  String? get paymentUrl => throw _privateConstructorUsedError;
  DiscountValueModel? get discountValue => throw _privateConstructorUsedError;
  String? get coupon => throw _privateConstructorUsedError;
  RequestState get getPackagesState => throw _privateConstructorUsedError;
  RequestState get getPaymentUrlState => throw _privateConstructorUsedError;
  RequestState get paymentResponseState => throw _privateConstructorUsedError;
  RequestState get couponState => throw _privateConstructorUsedError;
  String get errMessage => throw _privateConstructorUsedError;

  /// Create a copy of SubscriptionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubscriptionStateCopyWith<SubscriptionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionStateCopyWith<$Res> {
  factory $SubscriptionStateCopyWith(
          SubscriptionState value, $Res Function(SubscriptionState) then) =
      _$SubscriptionStateCopyWithImpl<$Res, SubscriptionState>;
  @useResult
  $Res call(
      {List<PackageModel> packages,
      int? selectedPackage,
      String? paymentUrl,
      DiscountValueModel? discountValue,
      String? coupon,
      RequestState getPackagesState,
      RequestState getPaymentUrlState,
      RequestState paymentResponseState,
      RequestState couponState,
      String errMessage});

  $DiscountValueModelCopyWith<$Res>? get discountValue;
}

/// @nodoc
class _$SubscriptionStateCopyWithImpl<$Res, $Val extends SubscriptionState>
    implements $SubscriptionStateCopyWith<$Res> {
  _$SubscriptionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubscriptionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packages = null,
    Object? selectedPackage = freezed,
    Object? paymentUrl = freezed,
    Object? discountValue = freezed,
    Object? coupon = freezed,
    Object? getPackagesState = null,
    Object? getPaymentUrlState = null,
    Object? paymentResponseState = null,
    Object? couponState = null,
    Object? errMessage = null,
  }) {
    return _then(_value.copyWith(
      packages: null == packages
          ? _value.packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<PackageModel>,
      selectedPackage: freezed == selectedPackage
          ? _value.selectedPackage
          : selectedPackage // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentUrl: freezed == paymentUrl
          ? _value.paymentUrl
          : paymentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      discountValue: freezed == discountValue
          ? _value.discountValue
          : discountValue // ignore: cast_nullable_to_non_nullable
              as DiscountValueModel?,
      coupon: freezed == coupon
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as String?,
      getPackagesState: null == getPackagesState
          ? _value.getPackagesState
          : getPackagesState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getPaymentUrlState: null == getPaymentUrlState
          ? _value.getPaymentUrlState
          : getPaymentUrlState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      paymentResponseState: null == paymentResponseState
          ? _value.paymentResponseState
          : paymentResponseState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      couponState: null == couponState
          ? _value.couponState
          : couponState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      errMessage: null == errMessage
          ? _value.errMessage
          : errMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of SubscriptionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DiscountValueModelCopyWith<$Res>? get discountValue {
    if (_value.discountValue == null) {
      return null;
    }

    return $DiscountValueModelCopyWith<$Res>(_value.discountValue!, (value) {
      return _then(_value.copyWith(discountValue: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubscriptionStateImplCopyWith<$Res>
    implements $SubscriptionStateCopyWith<$Res> {
  factory _$$SubscriptionStateImplCopyWith(_$SubscriptionStateImpl value,
          $Res Function(_$SubscriptionStateImpl) then) =
      __$$SubscriptionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PackageModel> packages,
      int? selectedPackage,
      String? paymentUrl,
      DiscountValueModel? discountValue,
      String? coupon,
      RequestState getPackagesState,
      RequestState getPaymentUrlState,
      RequestState paymentResponseState,
      RequestState couponState,
      String errMessage});

  @override
  $DiscountValueModelCopyWith<$Res>? get discountValue;
}

/// @nodoc
class __$$SubscriptionStateImplCopyWithImpl<$Res>
    extends _$SubscriptionStateCopyWithImpl<$Res, _$SubscriptionStateImpl>
    implements _$$SubscriptionStateImplCopyWith<$Res> {
  __$$SubscriptionStateImplCopyWithImpl(_$SubscriptionStateImpl _value,
      $Res Function(_$SubscriptionStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubscriptionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packages = null,
    Object? selectedPackage = freezed,
    Object? paymentUrl = freezed,
    Object? discountValue = freezed,
    Object? coupon = freezed,
    Object? getPackagesState = null,
    Object? getPaymentUrlState = null,
    Object? paymentResponseState = null,
    Object? couponState = null,
    Object? errMessage = null,
  }) {
    return _then(_$SubscriptionStateImpl(
      packages: null == packages
          ? _value._packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<PackageModel>,
      selectedPackage: freezed == selectedPackage
          ? _value.selectedPackage
          : selectedPackage // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentUrl: freezed == paymentUrl
          ? _value.paymentUrl
          : paymentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      discountValue: freezed == discountValue
          ? _value.discountValue
          : discountValue // ignore: cast_nullable_to_non_nullable
              as DiscountValueModel?,
      coupon: freezed == coupon
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as String?,
      getPackagesState: null == getPackagesState
          ? _value.getPackagesState
          : getPackagesState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getPaymentUrlState: null == getPaymentUrlState
          ? _value.getPaymentUrlState
          : getPaymentUrlState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      paymentResponseState: null == paymentResponseState
          ? _value.paymentResponseState
          : paymentResponseState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      couponState: null == couponState
          ? _value.couponState
          : couponState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      errMessage: null == errMessage
          ? _value.errMessage
          : errMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SubscriptionStateImpl implements _SubscriptionState {
  const _$SubscriptionStateImpl(
      {final List<PackageModel> packages = const [],
      this.selectedPackage = null,
      this.paymentUrl = null,
      this.discountValue = null,
      this.coupon = null,
      this.getPackagesState = RequestState.initial,
      this.getPaymentUrlState = RequestState.initial,
      this.paymentResponseState = RequestState.initial,
      this.couponState = RequestState.initial,
      this.errMessage = ''})
      : _packages = packages;

  final List<PackageModel> _packages;
  @override
  @JsonKey()
  List<PackageModel> get packages {
    if (_packages is EqualUnmodifiableListView) return _packages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_packages);
  }

  @override
  @JsonKey()
  final int? selectedPackage;
  @override
  @JsonKey()
  final String? paymentUrl;
  @override
  @JsonKey()
  final DiscountValueModel? discountValue;
  @override
  @JsonKey()
  final String? coupon;
  @override
  @JsonKey()
  final RequestState getPackagesState;
  @override
  @JsonKey()
  final RequestState getPaymentUrlState;
  @override
  @JsonKey()
  final RequestState paymentResponseState;
  @override
  @JsonKey()
  final RequestState couponState;
  @override
  @JsonKey()
  final String errMessage;

  @override
  String toString() {
    return 'SubscriptionState(packages: $packages, selectedPackage: $selectedPackage, paymentUrl: $paymentUrl, discountValue: $discountValue, coupon: $coupon, getPackagesState: $getPackagesState, getPaymentUrlState: $getPaymentUrlState, paymentResponseState: $paymentResponseState, couponState: $couponState, errMessage: $errMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionStateImpl &&
            const DeepCollectionEquality().equals(other._packages, _packages) &&
            (identical(other.selectedPackage, selectedPackage) ||
                other.selectedPackage == selectedPackage) &&
            (identical(other.paymentUrl, paymentUrl) ||
                other.paymentUrl == paymentUrl) &&
            (identical(other.discountValue, discountValue) ||
                other.discountValue == discountValue) &&
            (identical(other.coupon, coupon) || other.coupon == coupon) &&
            (identical(other.getPackagesState, getPackagesState) ||
                other.getPackagesState == getPackagesState) &&
            (identical(other.getPaymentUrlState, getPaymentUrlState) ||
                other.getPaymentUrlState == getPaymentUrlState) &&
            (identical(other.paymentResponseState, paymentResponseState) ||
                other.paymentResponseState == paymentResponseState) &&
            (identical(other.couponState, couponState) ||
                other.couponState == couponState) &&
            (identical(other.errMessage, errMessage) ||
                other.errMessage == errMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_packages),
      selectedPackage,
      paymentUrl,
      discountValue,
      coupon,
      getPackagesState,
      getPaymentUrlState,
      paymentResponseState,
      couponState,
      errMessage);

  /// Create a copy of SubscriptionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionStateImplCopyWith<_$SubscriptionStateImpl> get copyWith =>
      __$$SubscriptionStateImplCopyWithImpl<_$SubscriptionStateImpl>(
          this, _$identity);
}

abstract class _SubscriptionState implements SubscriptionState {
  const factory _SubscriptionState(
      {final List<PackageModel> packages,
      final int? selectedPackage,
      final String? paymentUrl,
      final DiscountValueModel? discountValue,
      final String? coupon,
      final RequestState getPackagesState,
      final RequestState getPaymentUrlState,
      final RequestState paymentResponseState,
      final RequestState couponState,
      final String errMessage}) = _$SubscriptionStateImpl;

  @override
  List<PackageModel> get packages;
  @override
  int? get selectedPackage;
  @override
  String? get paymentUrl;
  @override
  DiscountValueModel? get discountValue;
  @override
  String? get coupon;
  @override
  RequestState get getPackagesState;
  @override
  RequestState get getPaymentUrlState;
  @override
  RequestState get paymentResponseState;
  @override
  RequestState get couponState;
  @override
  String get errMessage;

  /// Create a copy of SubscriptionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubscriptionStateImplCopyWith<_$SubscriptionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
