.class public LEN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/fragment/HomeFragment;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/fragment/HomeFragment;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, LEN;->a:Lcom/yik/yak/ui/fragment/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, LEN;->a:Lcom/yik/yak/ui/fragment/HomeFragment;

    invoke-virtual {v0}, Lcom/yik/yak/ui/fragment/HomeFragment;->c()V

    .line 141
    return-void
.end method
