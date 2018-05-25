require 'byebug'

class PolyTreeNode

  def initialize(value)
    @value = value
    @parent = nil 
    @children = []
    # @nodes = []
  end 
  
  def parent
    @parent
  end
  
  def children
    @children
  end 
  
  def value
    @value
  end 
  
  def parent=(new_parent)
    #debugger
    @parent.children.delete(self) if @parent
    
    @parent = new_parent
    
    unless new_parent == nil
      new_parent.children << self unless new_parent.children.include?(self)
    end
    
  end 
  
  def add_child(child)
    # debugger
    child.parent = self
  end
  
  def remove_child(child)
    raise "this is not child" unless children.include?(child)
    child.parent = nil
  end
  
  def dfs(target_value)
    
  end
  
end
