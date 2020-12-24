# frozen_string_literal: true

#
# Copyright (c) 2020-present, Blue Marble Payroll, LLC
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.
#

require_relative 'library/deserialize/xml'
require_relative 'library/serialize/xml'

module Burner
  # Open up the Burner::Jobs class and register our jobs.
  class Jobs
    register 'markup_fuel/deserialize/xlsx', MarkupFuel::Library::Deserialize::Xml
    register 'markup_fuel/serialize/xlsx',   MarkupFuel::Library::Serialize::Xml
  end
end
