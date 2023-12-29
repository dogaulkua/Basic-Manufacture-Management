# Basic-Manufacture-Management

# Production Management Module

Bu Move dilindeki modül, üretim süreçlerini yönetmek için temel işlevselliği sağlar.

## Kullanım

Bu modülü kullanmak için, `ProductionManagementModule`'ün bir örneğini oluşturmalı ve ardından çeşitli işlevleri çağırmalısınız.

### Örnek

```move
// ProductionManagementModule örneği oluştur
public let moduleRef: &mut ProductionManagementModule;
moduleRef = move(ProductionManagementModule, empty);

// Üretim süreci oluştur
createProductionProcess(
    moduleRef,
    1 /* processId */,
    1639747200 /* startTime */,
    1639750800 /* endTime */,
    1 /* status */
);

// Üretim süreçlerini al
let processes = getProductionProcesses(moduleRef);
