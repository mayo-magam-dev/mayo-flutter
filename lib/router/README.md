# 라우터 관리 가이드

## 📁 파일 구조
```
lib/router/
├── app_routes.dart     # 라우터 경로 상수 및 네비게이션 헬퍼
├── router.dart         # GoRouter 설정
└── README.md          # 이 파일
```

## 🚀 사용법

### 1. 라우터 경로 사용
```dart
// ❌ 이전 방식 (하드코딩)
context.push('/login');
context.go('/store/123');

// ✅ 새로운 방식 (타입 안전)
context.push(AppRoutes.login);
context.go(AppRoutes.storeDetail('123'));
```

### 2. 파라미터가 있는 라우터
```dart
// 상품 상세 페이지
context.push(AppRoutes.productDetail('item123', 'store456', '가게명'));

// 가게 상세 페이지
context.push(AppRoutes.storeDetail('store123'));

// 주문 상세 페이지
context.push(AppRoutes.orderDetailPage('order123', 'store456', 'completed'));
```

### 3. 네비게이션 헬퍼 사용
```dart
// 더 간단한 네비게이션
AppNavigation.goLogin(context);
AppNavigation.goStoreDetail(context, 'store123');
AppNavigation.goHome(context);
AppNavigation.pop(context);
```

### 4. 라우터 파라미터 접근
```dart
// 라우터에서 파라미터 접근 시
final storeId = state.pathParameters[RouteParams.storeId]!;
final productData = state.pathParameters[RouteParams.productData]!;
```

## 🎯 장점

### 1. **타입 안전성**
- 오타 방지
- IDE 자동완성 지원
- 컴파일 타임 에러 감지

### 2. **유지보수성**
- 경로 변경 시 한 곳에서만 수정
- 중앙 집중식 관리
- 일관성 보장

### 3. **개발 효율성**
- 자동완성으로 빠른 개발
- 리팩토링 시 안전성
- 코드 가독성 향상

## 📝 예시

### 기존 코드
```dart
// 여러 파일에서 하드코딩된 경로
context.push('/login');
context.push('/profile');
context.push('/store/123');
context.push('/product/item123/store456/가게명');
```

### 개선된 코드
```dart
// 타입 안전하고 일관된 경로 사용
AppNavigation.goLogin(context);
AppNavigation.goProfile(context);
AppNavigation.goStoreDetail(context, '123');
AppNavigation.goProductDetail(context, 'item123', 'store456', '가게명');
```

## 🔧 새로운 라우터 추가

### 1. AppRoutes에 경로 추가
```dart
abstract class AppRoutes {
  // 새로운 경로 추가
  static const String newPage = '/new-page';
  static String newPageWithParam(String id) => '$newPage/$id';
}
```

### 2. RouteParams에 파라미터 추가
```dart
abstract class RouteParams {
  // 새로운 파라미터 추가
  static const String newParam = 'newParam';
}
```

### 3. AppNavigation에 헬퍼 추가
```dart
abstract class AppNavigation {
  // 새로운 네비게이션 헬퍼 추가
  static void goNewPage(BuildContext context) => context.go(AppRoutes.newPage);
  static void goNewPageWithParam(BuildContext context, String id) => 
      context.go(AppRoutes.newPageWithParam(id));
}
```

### 4. router.dart에 라우터 추가
```dart
GoRoute(
  path: AppRoutes.newPage,
  builder: (context, state) => NewPage(),
),
```

## ⚠️ 주의사항

1. **파라미터 순서**: 함수 파라미터 순서를 정확히 지켜야 함
2. **Import**: 사용하는 파일에 `import 'package:mayo_flutter/router/app_routes.dart';` 추가
3. **일관성**: 모든 네비게이션에서 AppRoutes 사용 권장 