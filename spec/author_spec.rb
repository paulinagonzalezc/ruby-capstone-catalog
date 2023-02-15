require_relative '../src/author'

describe Author do
    context 'Initialized' do
        before(:all) do
            @author = Author.new('Zia', 'Bakhteyari')
        end

        it 'Should have an id' do
            expect(@author.id).to be_a Integer
        end

        it 'Should have first_name' do
            expect(@author.first_name).to eq 'Zia'
        end

        it 'Should have last_name' do 
            expect(@author.last_name).to eq 'Bakhteyari'
        end
    end
end