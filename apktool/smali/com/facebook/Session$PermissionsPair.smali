.class Lcom/facebook/Session$PermissionsPair;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field declinedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field grantedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 632
    iput-object p1, p0, Lcom/facebook/Session$PermissionsPair;->grantedPermissions:Ljava/util/List;

    .line 633
    iput-object p2, p0, Lcom/facebook/Session$PermissionsPair;->declinedPermissions:Ljava/util/List;

    .line 634
    return-void
.end method


# virtual methods
.method public getDeclinedPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 641
    iget-object v0, p0, Lcom/facebook/Session$PermissionsPair;->declinedPermissions:Ljava/util/List;

    return-object v0
.end method

.method public getGrantedPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 637
    iget-object v0, p0, Lcom/facebook/Session$PermissionsPair;->grantedPermissions:Ljava/util/List;

    return-object v0
.end method
