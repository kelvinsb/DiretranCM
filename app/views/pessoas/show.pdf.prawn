require 'prawn'
require 'date'

pdf = Prawn::Document.new

pdf.font "Helvetica"

# Defining the grid 
# See http://prawn.majesticseacreature.com/manual.pdf
#pdf.define_grid(:columns => 5, :rows => 8, :gutter => 10) 
pdf.stroke_axis
pdf.bounding_box([0, 700], :width => 550, :height => 200) do
	pdf.stroke_bounds
end
pdf.stroke do
	pdf.vertical_line 700, 500, :at => 275
end
