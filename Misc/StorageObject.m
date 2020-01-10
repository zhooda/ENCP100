classdef StorageObject
    properties
        name
        slotsTotal
        slotsFree
        slotsUsed
        storedItems
    end
    methods
        function self = StorageObject(name, slotsTotal)
            self.name = name
            self.slotsTotal = slotsTotal
            self.slotsFree = slotsTotal
            self.slotsUsed = 0
            self.storedItems = []
        end
        function disp(self)
            fprintf(self.name)
        end
        function name = getName(self)
            name = self.name
        end
        function totalSlots = getTotalSlots(self)
            totalSlots = self.slotsTotal
        end
        function usedSlots = getUsedSlots(self)
            self.slotsUsed = 0
            for i = 1:length(self.storedItems)
                self.slotsUsed += self.storedItems(i).get
            end
        end
    end
end