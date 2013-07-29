module AbilityDsl::Constraints
  module Group
    # uses the group where the corresponding permission is defined
    def in_same_group
      group && permission_in_group?(group.id)
    end

    def in_same_layer
      group && permission_in_layer?(group.layer_group_id)
    end

    # uses the layers where the corresponding permission is defined
    def in_same_layer_or_below
      group && permission_in_layers?(group.layer_hierarchy.collect(&:id))
    end

    def group_not_deleted
      !group.deleted?
    end

    private

    def group
      subject.group
    end

  end
end