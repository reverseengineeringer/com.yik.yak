.class Lcom/parse/ParseQueryAdapter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/parse/ParseQueryAdapter;


# direct methods
.method constructor <init>(Lcom/parse/ParseQueryAdapter;)V
    .locals 0

    .prologue
    .line 540
    iput-object p1, p0, Lcom/parse/ParseQueryAdapter$4;->this$0:Lcom/parse/ParseQueryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter$4;->this$0:Lcom/parse/ParseQueryAdapter;

    invoke-virtual {v0}, Lcom/parse/ParseQueryAdapter;->loadNextPage()V

    .line 544
    return-void
.end method
