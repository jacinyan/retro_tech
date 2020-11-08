class AddAdmin < ActiveRecord::Migration[6.0]
  def change
    User.create! do |u|
      u.email     = 'wyejay090717@gmail.com'
      u.password  = '@Wyejay199007179152'
      u.admin_role = true
    end
  end
end
