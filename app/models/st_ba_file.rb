class StBaFile < ApplicationRecord
	CERTIFICATES=['SAT', 'GCSE', 'Tahseli', 'Qudorat', 'Yos', 'Mearyi']
	LANGUAGECERTIFICATES=['Toefl', 'ielts', 'Other']
	PRIORITY=['HIGH', 'MEDIUM', 'LOW']
	belongs_to :user
	has_many :st_wishes, dependent: :destroy
	accepts_nested_attributes_for :st_wishes, allow_destroy: true
	validate :require_one_option

	private
  def require_one_option
    errors.add(:base, "Please choose an option from Extra Certificates") if self.st_ba_cer_extra.nil?
  end
end
