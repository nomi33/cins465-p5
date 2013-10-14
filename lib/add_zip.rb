module AddZip

    def AddZip.is_legal zip
        codes = File.open("lib/zip").to_a
        codes.map! { |word| word.chomp!}
        return (codes.each { |s| s.include?(zip)})
    end
end
