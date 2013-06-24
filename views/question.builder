xml.instruct! :xml, :version => '1.0'

xml.Response do
  xml.Say voice: "woman" do
    xml.text! question
  end
  xml.Record maxLength: 30, transcribe: false
end

# xml.Response do
#   questions.each do |question|
#     xml.Say voice: "woman" do
#       xml.text! question
#     end
#     xml.Pause length: 15
#   end
# end
