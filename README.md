activeadmin_test_belongs_to
===========================

test usability of belongs_to in activeadmin


Setup & Start
===========================
clone project.
install gems with bundle.

rake db:create RAILS_ENV=development

rake db:migrate RAILS_ENV=development

rake db:seed RAILS_ENV=development

start server.

Problems
===========================
<b>not critical</b>: resource model of parent page must have association with name equal to name of child page.

if first line of  will be:

ActiveAdmin.register RegionCity, as: 'Village' do


<b>critical</b>: if belongs_to is optional url helpers are created with use of polymorphic_path and polymorphic_link methods. 
This methods don't know anything about resource renaming in active admin.

