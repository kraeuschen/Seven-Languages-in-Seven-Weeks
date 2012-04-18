class Tree
    attr_accessor :children, :node_name

    def initialize(tree = {})
        @node_name = tree.keys[0]
        @children = tree[@node_name].collect{|key, value| Tree.new({key => value})}
    end

    def visit_all(&block)
        visit &block
        children.each {|c| c.visit_all &block}
    end

    def visit(&block)
        block.call self
    end
end

tree = Tree.new({
     "grandpa" => {
         "dad" => {
             "child1" => {},
             "child2" => {}
         },
         "uncle" => {
             "child3" => {},
             "child4" => {}
         }
    }
});

tree.visit_all {|node| puts node.node_name}
