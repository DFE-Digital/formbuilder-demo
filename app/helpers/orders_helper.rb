module OrdersHelper
  def summary_list_row_builder(row, key:, value:, actions: [])
    row.key { key }
    row.value { value }

    actions.each { |name, path| row.action(href: path, text: name) }
  end
end
