ActiveAdmin.register Movie do

  scope :all
  scope :popular

  permit_params :name


  
end
