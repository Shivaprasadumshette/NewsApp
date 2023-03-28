
import '../models/category_model.dart';

List<CategoryModel> getCategories() {
  List<CategoryModel> category = <CategoryModel>[];
  //1
  CategoryModel categoryModel = CategoryModel();
  categoryModel.categoryName = "General";
  categoryModel.imageUrl = "https://images.unsplash.com/photo-1434030216411-0b793f4b4173?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Z2VuZXJhbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60";
  category.add(categoryModel);
//  2
  categoryModel = CategoryModel();
  categoryModel.categoryName = "Sports";
  categoryModel.imageUrl = "https://images.unsplash.com/photo-1521791136064-7986c2920216?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80";
  category.add(categoryModel);
//  3
  categoryModel = CategoryModel();
  categoryModel.categoryName = "Entertainment";
  categoryModel.imageUrl ="https://images.unsplash.com/photo-1586899028174-e7098604235b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8ZW50ZXJ0YWlubWVudHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60";
  category.add(categoryModel);
//4
  categoryModel = CategoryModel();
  categoryModel.categoryName = "Bussiness";
  categoryModel.imageUrl = "https://images.unsplash.com/photo-1521791136064-7986c2920216?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80";
  category.add(categoryModel);
  //5
  categoryModel = CategoryModel();
  categoryModel.categoryName = "Technology";
  categoryModel.imageUrl = "https://imageio.forbes.com/specials-images/imageserve/6200b0dddcf32d3be937fa84/The-5-Technologies-That-Will-Change-The-Future-Of-The-Human-Race/960x0.jpg?format=jpg&width=960";
  category.add(categoryModel);
  //6
  categoryModel = CategoryModel();
  categoryModel.categoryName = "Science";
  categoryModel.imageUrl = "https://media.istockphoto.com/id/1389436565/photo/shot-of-a-young-female-lab-worker-analysing-samples-through-a-microscope.jpg?b=1&s=170667a&w=0&k=20&c=vSReQzkVgFnfEVQ0qFvk584RoXuQY1VMXOBT1N5Mx-U=";
  category.add(categoryModel);


  return category;
}
