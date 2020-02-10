class Pokemon
  attr_accessor :id, :name, :type, :db
  
  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
  end
  
  def self.save(name, type, db)
    sql = <<-SQL
      INSERT INTO pokemon (name, type) VALUES (?, ?)
      SQL
      
      db.execute(sql, name, type)
  end
  
  def self.find(num, db)
    
    sql = "SELECT * FROM pokemon WHERE id = (?)"
    
    pokemon = db.execute(sql, num)
    # new_pokemon = self.new(pokemon[0], pokemon[1], pokemon[2], db)
    binding.pry
  end
  
end
