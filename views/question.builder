xml.instruct! :xml, :version => '1.0'
xml.Response do
  xml.Say voice: "woman" do
    xml.text! question
  end
  xml.Record maxLength: 60
end
