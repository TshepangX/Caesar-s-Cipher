class Caes:after 
    @@uppercase_letters = ("A".."Z").to_a
    @@lowercase_letters = ("a".."z").to_a

    attr_accessor :key #get and set key without methods

    def initialize(key)
        @key = key #key is turned into an instance variable to make it accessible
    end 

    def encrypt(text)
        #this handles the encryption of the text
        encrypted = "" #this will hold the encrypted text
        text.split("").to_a.each do |x|
            if @@uppercase_letters.include? x
                encrypted += @@uppercase_letters[ (@@uppercase_letters.index(x) + key) % 26]  
            elsif @@lowercase.include? x 
                encrypted += @@lowercase_letters[ (@@lowercase_letters.index(x) + key) % 26]
            else 
                encrypted += x 
            end 
        end
        return encrypted
    end 

    def decrypt(text) 
        decrypted = ""
        text.split("").to_a.each do |x|
            if @@uppercase_letters.include? x
                decrypted += @@uppercase_letters[ (@@uppercase_letters.index(x) - key) % 26]
            elsif @@lowercase_letters.include? x
                decrypted += @@lowercase_letters[ (@@lowercase_letters.index(x) - key) % 26]
            else
                decrypted += x
            end
        end
        return decrypted
    end 
	end