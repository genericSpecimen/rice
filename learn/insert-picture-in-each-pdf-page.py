import fitz

filename = "assign.pdf"
output = "out.pdf"
name_img = "name.jpg"
doc = fitz.open(filename)

rect = fitz.Rect(0+200, 0+20, 150+200, 150+20)
pix = fitz.Pixmap(name_img)

for page in doc:
	page.insertImage(rect, pixmap = pix, overlay = True)

doc.save(output)



#rect = fitz.Rect(0+200, 0+40, 75+200, 75+40)
#for i in [0, 1, 2, 3, 4, 6, 8, 10, 11]:
#	doc[i].insertImage(rect, pixmap = pix, overlay = True)

#rect = fitz.Rect(0+400, 0+25, 75+400, 75+25)
#for i in [5, 7]:
#	doc[i].insertImage(rect, pixmap = pix, overlay = True)


