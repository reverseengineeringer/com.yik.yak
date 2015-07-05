.class LDT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:LDP;


# direct methods
.method constructor <init>(LDP;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, LDT;->a:LDP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 160
    iget-object v2, p0, LDT;->a:LDP;

    invoke-static {v2}, LDP;->d(LDP;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    iget-object v2, p0, LDT;->a:LDP;

    invoke-static {v2}, LDP;->b(LDP;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f0200fb

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 162
    iget-object v2, p0, LDT;->a:LDP;

    iget-object v3, p0, LDT;->a:LDP;

    invoke-static {v3}, LDP;->c(LDP;)Landroid/widget/EditText;

    move-result-object v3

    invoke-static {v2, v3, v1}, LDP;->a(LDP;Landroid/widget/TextView;Z)V

    .line 169
    :cond_0
    :goto_0
    iget-object v2, p0, LDT;->a:LDP;

    iget-object v3, p0, LDT;->a:LDP;

    invoke-static {v3}, LDP;->d(LDP;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-static {v2, v0}, LDP;->a(LDP;Z)Z

    .line 170
    return-void

    .line 164
    :cond_1
    iget-object v2, p0, LDT;->a:LDP;

    invoke-static {v2}, LDP;->b(LDP;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f0200fa

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 165
    iget-object v2, p0, LDT;->a:LDP;

    iget-object v3, p0, LDT;->a:LDP;

    invoke-static {v3}, LDP;->c(LDP;)Landroid/widget/EditText;

    move-result-object v3

    invoke-static {v2, v3, v0}, LDP;->a(LDP;Landroid/widget/TextView;Z)V

    .line 166
    iget-object v2, p0, LDT;->a:LDP;

    invoke-static {v2}, LDP;->c(LDP;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    iget-object v2, p0, LDT;->a:LDP;

    invoke-static {v2}, LDP;->c(LDP;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_2
    move v0, v1

    .line 169
    goto :goto_1
.end method
