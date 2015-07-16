.class public La;
.super Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v7/internal/view/menu/ActionMenuItemView;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/ActionMenuItemView;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, La;->a:Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    .line 295
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;-><init>(Landroid/view/View;)V

    .line 296
    return-void
.end method


# virtual methods
.method public getPopup()Landroid/support/v7/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, La;->a:Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->a(Landroid/support/v7/internal/view/menu/ActionMenuItemView;)Lb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, La;->a:Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->a(Landroid/support/v7/internal/view/menu/ActionMenuItemView;)Lb;

    move-result-object v0

    invoke-virtual {v0}, Lb;->getPopup()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v0

    .line 303
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onForwardingStarted()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 309
    iget-object v1, p0, La;->a:Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    invoke-static {v1}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->b(Landroid/support/v7/internal/view/menu/ActionMenuItemView;)Li;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, La;->a:Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    invoke-static {v1}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->b(Landroid/support/v7/internal/view/menu/ActionMenuItemView;)Li;

    move-result-object v1

    iget-object v2, p0, La;->a:Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    invoke-static {v2}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->c(Landroid/support/v7/internal/view/menu/ActionMenuItemView;)Landroid/support/v7/internal/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-interface {v1, v2}, Li;->invokeItem(Landroid/support/v7/internal/view/menu/MenuItemImpl;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    invoke-virtual {p0}, La;->getPopup()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v1

    .line 311
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 313
    :cond_0
    return v0
.end method

.method protected onForwardingStopped()Z
    .locals 1

    .prologue
    .line 318
    invoke-virtual {p0}, La;->getPopup()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v0

    .line 319
    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->dismiss()V

    .line 321
    const/4 v0, 0x1

    .line 323
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
