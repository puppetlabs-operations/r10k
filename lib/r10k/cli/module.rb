require 'r10k/cli'
require 'cri'

module R10K::CLI
  module Module
    def self.command
      @cmd ||= Cri::Command.define do
        name  'module'
        usage 'module <subcommand>'
        summary 'Operate on a specific puppet module'

        required :e, :environment, 'Specify a particular environment'

        run do |opts, args, cmd|
          puts cmd.help
          exit 0
        end
      end
    end
  end
  self.command.add_command(Module.command)
end

require 'r10k/cli/module/deploy'
require 'r10k/cli/module/list'
