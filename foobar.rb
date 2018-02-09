class Foobar

  def self.baz(a)
    a.map! {|x| x.to_i}
    a.map! {|x| x+2}
    a.delete_if {|x| x%2 != 0 || x >= 10}
    return a.uniq.inject(0, :+)
  end
end
