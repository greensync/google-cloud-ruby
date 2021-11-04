# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: grafeas/v1/package.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("grafeas/v1/package.proto", :syntax => :proto3) do
    add_message "grafeas.v1.Distribution" do
      optional :cpe_uri, :string, 1
      optional :architecture, :enum, 2, "grafeas.v1.Architecture"
      optional :latest_version, :message, 3, "grafeas.v1.Version"
      optional :maintainer, :string, 4
      optional :url, :string, 5
      optional :description, :string, 6
    end
    add_message "grafeas.v1.Location" do
      optional :cpe_uri, :string, 1
      optional :version, :message, 2, "grafeas.v1.Version"
      optional :path, :string, 3
    end
    add_message "grafeas.v1.PackageNote" do
      optional :name, :string, 1
      repeated :distribution, :message, 10, "grafeas.v1.Distribution"
    end
    add_message "grafeas.v1.PackageOccurrence" do
      optional :name, :string, 1
      repeated :location, :message, 2, "grafeas.v1.Location"
    end
    add_message "grafeas.v1.Version" do
      optional :epoch, :int32, 1
      optional :name, :string, 2
      optional :revision, :string, 3
      optional :inclusive, :bool, 6
      optional :kind, :enum, 4, "grafeas.v1.Version.VersionKind"
      optional :full_name, :string, 5
    end
    add_enum "grafeas.v1.Version.VersionKind" do
      value :VERSION_KIND_UNSPECIFIED, 0
      value :NORMAL, 1
      value :MINIMUM, 2
      value :MAXIMUM, 3
    end
    add_enum "grafeas.v1.Architecture" do
      value :ARCHITECTURE_UNSPECIFIED, 0
      value :X86, 1
      value :X64, 2
    end
  end
end

module Grafeas
  module V1
    Distribution = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.Distribution").msgclass
    Location = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.Location").msgclass
    PackageNote = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.PackageNote").msgclass
    PackageOccurrence = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.PackageOccurrence").msgclass
    Version = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.Version").msgclass
    Version::VersionKind = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.Version.VersionKind").enummodule
    Architecture = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.Architecture").enummodule
  end
end
