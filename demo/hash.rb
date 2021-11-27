extra = {show: true , message: "message"}

base_opts = {
  campaign: "nama_kempen",
  tarikh: "tarikh sekian sekian",
  extra: extra
}

class AnyService
  def self.blast(base_opts:, log:)
    puts base_opts[:campaign] # print nama kempen
    base_opts_2 = base_opts
    logs = log
    AnyService.blast(base_opts: base_opts_2, log: logs)
  end
end

log = "hello log"
AnyService.blast(base_opts: base_opts, log: log)

