class Question
  def self.all
    YAML.load_file("questions.yml")
  end

  def random
  end

  def random(limit)
  end
end
