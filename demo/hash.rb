extra = {show: true , message: "message"}

base_opts = {
  campaign: "nama_kempen",
  tarikh: "tarikh sekian sekian",
  extra: extra
}

puts base_opts

class AnyService
  def self.blast(base_opts:)
    puts base_opts[:campaign] # print nama kempen
  end
end

AnyService.blast(base_opts: base_opts)
