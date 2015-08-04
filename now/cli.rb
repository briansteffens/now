#!/usr/bin/env ruby

require 'optparse'
require 'inifile'
require 'open3'


class Context
    attr_accessor :distribution
    attr_accessor :includes
    attr_accessor :command
    attr_accessor :args
    attr_accessor :flags

    def initialize(config, args)
        @distribution = config['distribution']
        @includes = config['includes']
        @command = args.shift
        @args = args
        @flags = []

        (0..args.length-1).reverse_each do |i|
            if args[i].start_with?("-")
                @flags.push(args[i][1..-1])
                @args.delete_at(i)
            end
        end
    end
end


abort("Usage: [sudo] now <update/shutdown>") if ARGV.length == 0


ctx = Context.new(IniFile.load('/etc/now.conf')['global'], ARGV)

require ctx.includes+'distributions/'+ctx.distribution+'.rb'

exec(Translator.new().send(ctx.command, *[ctx]))
