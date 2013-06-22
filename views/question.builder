xml.instruct! :xml, :version => '1.0'
xml.response do
  xml.say voice: "woman" do
    xml.text! question
  end
  xml.record maxLength: 60
end
