.class public LBJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/SelectBasecampActivity;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/SelectBasecampActivity;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, LBJ;->a:Lcom/yik/yak/ui/activity/SelectBasecampActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, LBJ;->a:Lcom/yik/yak/ui/activity/SelectBasecampActivity;

    invoke-virtual {v0, p1}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->onSetBasecampClicked(Landroid/view/View;)V

    .line 100
    return-void
.end method
