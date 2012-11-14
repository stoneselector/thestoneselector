class WriteDb
  def self.make_items_table
    @item_attributeskl = {}
    
    oo = Openoffice.new( Rails.root.to_s + "/app/controllers/source.ods")
    oo.default_sheet = oo.sheets.first
    
    2.upto(oo.last_row) do |row|
      1.upto(oo.last_column) do |col|
        @item_attributeskl.merge!({(oo.cell(1,col).to_sym) => (oo.cell(row, col))})
      end       
      puts @item_attributeskl.to_s
      @item = Item.create(@item_attributeskl)
      puts "Cleared " +  @item_attributeskl.to_s
    end
  end 
end