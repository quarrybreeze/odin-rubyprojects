require_relative '../cipher'

describe Cipher do
  describe '#caesar_cipher' do
    context 'when shifting' do
      let(:input_string) {'a'}
      subject(:shiftbyone) {described_class.new(input_string)}


      it 'works with shift of 1' do
        shift = 1
        result = shiftbyone.caesar_cipher(input_string, shift)
        expect(result).to eql('b')
      end

      it 'works with a shift of 25' do
        shift = 25
        result = shiftbyone.caesar_cipher(input_string, shift)
        expect(result).to eql('z')
      end

      let(:input_sentence) {'What a string!'}
      subject(:shiftby5) {described_class.new(input_sentence)}
      it 'works with a sentence' do
        shift = 5
        result = shiftby5.caesar_cipher(input_sentence,shift)
        expect(result).to eql('Bmfy f xywnsl!')
      end
    end
  end
end