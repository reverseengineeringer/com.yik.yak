.class Landroid/support/v7/widget/PopupMenu$1;
.super Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/PopupMenu;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/PopupMenu;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Landroid/support/v7/widget/PopupMenu$1;->this$0:Landroid/support/v7/widget/PopupMenu;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Landroid/support/v7/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Landroid/support/v7/widget/PopupMenu$1;->this$0:Landroid/support/v7/widget/PopupMenu;

    # getter for: Landroid/support/v7/widget/PopupMenu;->mPopup:Lv;
    invoke-static {v0}, Landroid/support/v7/widget/PopupMenu;->access$000(Landroid/support/v7/widget/PopupMenu;)Lv;

    move-result-object v0

    invoke-virtual {v0}, Lv;->getPopup()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v0

    return-object v0
.end method

.method protected onForwardingStarted()Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Landroid/support/v7/widget/PopupMenu$1;->this$0:Landroid/support/v7/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->show()V

    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method protected onForwardingStopped()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Landroid/support/v7/widget/PopupMenu$1;->this$0:Landroid/support/v7/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->dismiss()V

    .line 144
    const/4 v0, 0x1

    return v0
.end method