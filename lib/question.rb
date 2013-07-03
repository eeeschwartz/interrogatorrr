class Question
  def self.all
    YAML.load_file("questions.yml")
  end

  def self.first
    all.first
  end

  def random
  end

  def random(limit)
  end
end
