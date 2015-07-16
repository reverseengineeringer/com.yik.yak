.class public LBj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:LBr;

.field final synthetic b:Lcom/yik/yak/ui/activity/MainActivity;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/MainActivity;LBr;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, LBj;->b:Lcom/yik/yak/ui/activity/MainActivity;

    iput-object p2, p0, LBj;->a:LBr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, LBj;->a:LBr;

    invoke-interface {v0}, LBr;->c()V

    .line 394
    return-void
.end method
