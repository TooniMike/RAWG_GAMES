part of 'category_bloc.dart';

enum CategoryStatus {
  initial,
  success,
  error,
  loading,
  selected;
}

extension CategoryStateX on CategoryStatus {
  bool get isInitial => this == CategoryStatus.initial;
  bool get isSuccess => this == CategoryStatus.success;
  bool get isError => this == CategoryStatus.error;
  bool get isLoading => this == CategoryStatus.loading;
  bool get isSelected => this == CategoryStatus.selected;
}


sealed class CategoryState extends Equatable {
  final int idSelected;
  final List<Genre> categories;
  final CategoryStatus status;

  const CategoryState({
    this.status = CategoryStatus.initial,
    List<Genre>? categories,
    this.idSelected = 0,
}) : categories = categories ?? const [];
  
  @override
  List<Object> get props => [status, categories, idSelected];
}

final class CategoryInitial extends CategoryState {}
