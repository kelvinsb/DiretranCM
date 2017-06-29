require 'prawn'

Prawn::Document.generate("hello.pdf") do
  pdf.text "Hello World!"

  pdf.stroke_axis
  pdf.stroke_circle [0,0], 10
end
