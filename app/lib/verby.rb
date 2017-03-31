class Verby
  def self.present_conj(infinitive)
    raise 'Infinitive is not provided' if infinitive.empty?
    infinitive.downcase!

    if infinitive.end_with? 'en' # standard conjugation
      stem = infinitive.slice(0,infinitive.length - 2)
      conj = {'ich'=> stem + 'e', 'du'=> stem + 'st', 'er'=> stem + 't','wir'=> infinitive, 'ihr'=> stem + 't', 'Sie'=> infinitive}
    elsif infinitive.end_with? 'n' # ends with just 'n'
      stem = infinitive.slice(0,infinitive.length - 1)
      conj = {'ich'=> stem + 'e', 'du'=> stem + 'st', 'er'=> stem + 't','wir'=> infinitive, 'ihr'=> stem + 't', 'Sie'=> infinitive}
    end

    unless stem.nil?
      if stem.end_with? 's' # if the stem ends with 's' then remove it from 'du' conjugation
        conj['du'] = stem + 't'
      elsif stem.end_with? 't' # if the stem ends with 't' then add 'e' before you conjugate it with endings that don't already include 'e'
          conj['du'] = stem + 'est'
          conj['er'] = stem + 'et'
          conj['ihr'] = stem + 'et'
      end
    end
    return conj
  end
end
