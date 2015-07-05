.class public LAZ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/support/v4/app/Fragment;

.field final synthetic b:Lcom/yik/yak/ui/activity/MainActivity;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/MainActivity;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, LAZ;->b:Lcom/yik/yak/ui/activity/MainActivity;

    iput-object p2, p0, LAZ;->a:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, LAZ;->a:Landroid/support/v4/app/Fragment;

    check-cast v0, LBh;

    invoke-interface {v0}, LBh;->c()V

    .line 393
    return-void
.end method
