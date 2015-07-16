.class public LDT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LFE;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/fragment/BaseYakFragment;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/fragment/BaseYakFragment;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, LDT;->a:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, LDT;->a:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->q()V

    .line 387
    iget-object v0, p0, LDT;->a:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->a_()V

    .line 388
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    iget-object v1, p0, LDT;->a:Lcom/yik/yak/ui/fragment/BaseYakFragment;

    iget-boolean v1, v1, Lcom/yik/yak/ui/fragment/BaseYakFragment;->k:Z

    invoke-virtual {v0, v1}, LHa;->d(Z)V

    .line 389
    return-void
.end method
