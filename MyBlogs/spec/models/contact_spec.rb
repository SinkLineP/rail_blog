require 'rails_helper'

describe Contact do
	it { should belong_to :article }
end