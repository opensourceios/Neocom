//
//  NCDBIndRequiredMaterial+CoreDataProperties.h
//  NCDatabase
//
//  Created by Артем Шиманский on 14.03.16.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "NCDBIndRequiredMaterial.h"

NS_ASSUME_NONNULL_BEGIN

@interface NCDBIndRequiredMaterial (CoreDataProperties)

@property (nonatomic) int32_t quantity;
@property (nullable, nonatomic, retain) NCDBIndActivity *activity;
@property (nullable, nonatomic, retain) NCDBInvType *materialType;

@end

NS_ASSUME_NONNULL_END
