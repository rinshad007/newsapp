import '../models/categorymodel.dart';

List<CategoryModel> getcatogaries(){
  List<CategoryModel> category=[];
  CategoryModel categoryModel = new  CategoryModel();

  categoryModel.categoryname='Business';
  categoryModel.image='lib/Images/business.jpg';
  category.add(categoryModel);
  categoryModel=new CategoryModel();

  categoryModel.categoryname='Entertaiments';
  categoryModel.image='lib/Images/entertaiments.jpg';
  category.add(categoryModel);
  categoryModel=new CategoryModel();

  categoryModel.categoryname='General';
  categoryModel.image='lib/Images/general.jpg';
  category.add(categoryModel);
  categoryModel=new CategoryModel();

  categoryModel.categoryname='Health';
  categoryModel.image='lib/Images/health.jpg';
  category.add(categoryModel);
  categoryModel=new CategoryModel();

  categoryModel.categoryname='Sceince';
  categoryModel.image='lib/Images/sceince.jpg';
  category.add(categoryModel);
  categoryModel=new CategoryModel();

  categoryModel.categoryname='Sports';
  categoryModel.image='lib/Images/sports.jpg';
  category.add(categoryModel);
  categoryModel=new CategoryModel();

  return category;
}