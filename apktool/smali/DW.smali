.class public LDW;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LDf;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/fragment/BaseYakFragment;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/fragment/BaseYakFragment;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, LDW;->a:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LDp;LDd;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LDp",
            "<*>;",
            "LDd;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 461
    iget-object v1, p0, LDW;->a:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iget-object v0, p0, LDW;->a:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    invoke-static {v1, v0}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->a(Lcom/yik/yak/ui/fragment/BaseYakFragment;Lcom/yik/yak/data/models/Yak;)V

    .line 462
    return-void
.end method
