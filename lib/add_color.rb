module AddColor
    
    def AddColor.is_color color
        colors = File.open("lib/color").to_a
        colors.map! {|word| word.chomp!}
        #hex = File.open("lib/hex").to_a
        #hex.map! {|word| word.chomp!}
        newColor = String.new
        colors.each {|s| s.downcase!}
        newColor = color.downcase
        newColor = newColor.gsub(' ', '')
     return (colors.include?(newColor))
    end
end
