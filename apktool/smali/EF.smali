.class public LEF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/yik/yak/data/models/Yak;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/fragment/DraftsFragment;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/fragment/DraftsFragment;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, LEF;->a:Lcom/yik/yak/ui/fragment/DraftsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yik/yak/data/models/Yak;Lcom/yik/yak/data/models/Yak;)I
    .locals 2

    .prologue
    .line 107
    iget v0, p1, Lcom/yik/yak/data/models/Yak;->DeliveryID:I

    iget v1, p2, Lcom/yik/yak/data/models/Yak;->DeliveryID:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 104
    check-cast p1, Lcom/yik/yak/data/models/Yak;

    check-cast p2, Lcom/yik/yak/data/models/Yak;

    invoke-virtual {p0, p1, p2}, LEF;->a(Lcom/yik/yak/data/models/Yak;Lcom/yik/yak/data/models/Yak;)I

    move-result v0

    return v0
.end method
