ActiveAdmin.register Pending do

  filter :client_nombre, as: :string, :label => "Nombre de cliente"
  filter :client_codigo, as: :string, :label => "Código de cliente"
  filter :product_codigo, as: :string, :label => "Código de product"
  filter :product_nombre, as: :string, :label => "Producto"
  filter :created_at, :label => "Fecha"

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :client_id,  :product_id, :cantidad, :fecha, :listo
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  index do
    id_column
    column :client
    column :product
    column :cantidad
    column :created_at
    column :listo
    actions
  end

  csv do
    column(:cliente) { |post| post.client.nombre }
    column(:codigo_de_cliente) { |post| post.client.codigo }
    column(:producto) { |post| post.product.nombre }
    column(:codigo_de_producto) { |post| post.product.codigo }
    column :cantidad
    column(:fecha) {|pending| pending.created_at.strftime("%d/%m/%y")}
  end

end
