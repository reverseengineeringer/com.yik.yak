.class public LEq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/fragment/ContactUsFragment;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/fragment/ContactUsFragment;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, LEq;->a:Lcom/yik/yak/ui/fragment/ContactUsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, LEq;->a:Lcom/yik/yak/ui/fragment/ContactUsFragment;

    invoke-static {v0}, Lcom/yik/yak/ui/fragment/ContactUsFragment;->b(Lcom/yik/yak/ui/fragment/ContactUsFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0121

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, LEq;->a:Lcom/yik/yak/ui/fragment/ContactUsFragment;

    invoke-static {v1}, Lcom/yik/yak/ui/fragment/ContactUsFragment;->a(Lcom/yik/yak/ui/fragment/ContactUsFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 124
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 129
    return-void
.end method
